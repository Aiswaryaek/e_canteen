import 'package:e_canteen/features/home/home_page.dart';
import 'package:e_canteen/provider/login_provider.dart';
import 'package:e_canteen/provider/product_list_provider.dart';
import 'package:e_canteen/repositories/auth_repository.dart';
import 'package:e_canteen/repositories/category_repository.dart';
import 'package:e_canteen/utilities/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await getValue('token');
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_) =>
                  LoginProvider(authRepository: AuthRepository())),
          ChangeNotifierProvider(
              create: (_) =>
                  ProductListProvider(
                      categoryRepository: CategoryRepository())),
        ],
        child:
        MyApp(token),
        ));
  }

class MyApp extends StatefulWidget {
  String token;

  MyApp(this.token, {Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: widget.token.isEmpty ? FlutterBasicApp() : const HomePage(),
    );
  }
}

