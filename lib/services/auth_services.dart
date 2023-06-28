import 'dart:convert';
import '../models/login_model.dart';
import '../utilities/api_helpers.dart';

Resource<LoginModel> postLoginApi(String username, String password) {
  return Resource(
      url: '/login',
      body: {
        'username': '+$username',
        'password': password,
        'store_id': '10',
      },
      parse: (response) {
        print(response.body);
        Map<String, dynamic> loginResultMap = jsonDecode(response.body);
        var loginResult = LoginModel.fromJson(loginResultMap);
        return loginResult;
      });
}
