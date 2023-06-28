import 'package:flutter/material.dart';

import '../core/live_data.dart';
import '../core/ui_state.dart';
import '../models/login_model.dart';
import '../repositories/auth_repository.dart';
import '../utilities/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  AuthRepository authRepository;

  LoginProvider({required this.authRepository});

  var loginModel = LoginModel();
  LiveData<UIState<LoginModel>> loginLiveData = LiveData<UIState<LoginModel>>();

  LiveData<UIState<LoginModel>> getLoginLiveData() {
    return this.loginLiveData;
  }

  void initialState() {
    loginLiveData.setValue(Initial());
    notifyListeners();
  }

  Future<void> checkLogin(String username, String password) async {
    try {
      loginLiveData.setValue(IsLoading());
      loginModel = await authRepository.login(username, password);
      if (loginModel.status == 200) {
        setValue('token', loginModel.token);
        loginLiveData.setValue(Success(loginModel));
      } else {
        loginLiveData.setValue(Failure(loginModel.toString()));
      }
    } catch (ex) {
      loginLiveData.setValue(Failure(ex.toString()));
    } finally {
      notifyListeners();
    }
  }
}
