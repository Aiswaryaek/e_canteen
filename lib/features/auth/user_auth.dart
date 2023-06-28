// ignore_for_file: prefer_const_constructors

import 'package:e_canteen/features/home/home_page.dart';
import 'package:e_canteen/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/ui_state.dart';
import '../../provider/login_provider.dart';
import '../../repositories/auth_repository.dart';
import '../../styles/textstyles.dart';
import '../../utilities/shared_preferences.dart';
import '../../widgets/login_button.dart';
import '../../widgets/text_input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginProvider loginProvider = LoginProvider(authRepository: AuthRepository());
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isHidden = true;

  onLogin() async {
    final isValidEmail = validateEmail(emailController.text);
    final isValidPassword = validatePassword(passwordController.text);
    if (isValidEmail && isValidPassword) {
      await loginProvider.checkLogin(
          emailController.text, passwordController.text);
    }
  }


  String storedToken = '';

  void getAccessToken() async {
    storedToken = await getValue('token');
    print('Token : '+storedToken.toString());
  }

  @override
  void initState() {
    getAccessToken();
    loginProvider.initialState();
    super.initState();
  }

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  String emailErrorMessage = "";

  bool validateEmail(String value) {
    if (!(value.isNotEmpty)) {
      setState(() {
        emailErrorMessage = "Email can't be empty";
      });
      return false;
    } else {
      setState(() {
        emailErrorMessage = "";
      });
      return true;
    }
  }

  String passErrorMessage = "";

  bool validatePassword(String value) {
    if (!(value.isNotEmpty)) {
      setState(() {
        passErrorMessage = "Password can't be empty";
      });
      return false;
    } else {
      setState(() {
        passErrorMessage = "";
      });
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: loginWidget(context),
      ),
      bottomNavigationBar: Image.asset(
        'assets/images/login_bottom_image.jpg',
        height: 197,
      ),
    ));
  }

  Widget loginWidget(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (ctx) {
        return loginProvider;
      },
      child: Consumer<LoginProvider>(
        builder: (ctx, data, _) {
          var state = data.getLoginLiveData().getValue();
          print(state);
          if (state is IsLoading) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Center(
                child: CircularProgressIndicator(color: greenButtonColor),
              ),
            );
          } else if (state is Initial) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/login_top_image.jpg',
                  height: 134,
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Welcome',
                    style: welcomeTextStyle,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.only(left: 13, right: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: loginHeadTextStyle,
                      ),
                      SizedBox(height: 5),
                      buildTextFormField(setState, 'Email', emailErrorMessage,
                          false, emailController),
                      SizedBox(height: 4),
                      Text(
                        'Password',
                        style: loginHeadTextStyle,
                      ),
                      SizedBox(height: 2),
                      buildTextField("Enter Password"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: submitButton(context, 'Login', onLogin),
                ),
                SizedBox(height: 40),
              ],
            );
          } else if (state is Success) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            });
            return SizedBox();
          } else if (state is Failure) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => LoginPage()));
              final snackBar = SnackBar(duration: const Duration(seconds: 2),
                backgroundColor: whiteColor,
                content: SizedBox(
                  height: 30,
                  child: Align(
                      alignment: Alignment.center,
                      child:
                          Text('Invalid Credentials', style: orderButtonText)),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
            return SizedBox();
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      controller: passwordController,
      style: textFieldInputStyle,
      cursorColor: blackColor,
      onChanged: (_) => setState(() {}),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        isDense: true,
        hintText: hintText,
        errorText: passwordController.text == '' ? passErrorMessage : '',
        hintStyle: labelTextStyle,
        fillColor: blackColor,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: buildTextFormColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: buildTextFormColor, width: 1),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: buildTextFormColor, width: 1),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: buildTextFormColor, width: 1),
        ),
        suffixIcon: hintText == "Enter Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off, color: loginHeadTextColor)
                    : Icon(Icons.visibility, color: loginHeadTextColor),
              )
            : null,
      ),
      obscureText: hintText == "Enter Password" ? _isHidden : false,
    );
  }
}
