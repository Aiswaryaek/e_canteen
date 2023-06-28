import '../services/auth_services.dart';
import '../services/web_service.dart';

class AuthRepository {
  var webService;

  AuthRepository() {
    this.webService = Webservice();
  }

  Future login(String username, String password) =>
      webService?.post(postLoginApi(username, password));
}
