import '../../../../../core/local/local_database.dart';

class AuthLocalDatasource {
  Future<void> saveLogin() async {
    await LocalDatabase.setLoggedIn(true);
  }

  bool isLoggedIn() {
    return LocalDatabase.isLoggedIn();
  }

  Future<void> logout() async {
    await LocalDatabase.logout();
  }
}
