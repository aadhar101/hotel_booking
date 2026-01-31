import 'package:hive/hive.dart';

class LocalDatabase {
  static final Box _box = Hive.box('authBox');

  // SAVE TOKEN
  static Future<void> saveToken(String token) async {
    await _box.put('token', token);
  }

  // GET TOKEN
  static String? getToken() {
    return _box.get('token');
  }

  // LOGIN STATE
  static Future<void> setLoggedIn(bool value) async {
    await _box.put('loggedIn', value);
  }

  static bool isLoggedIn() {
    return _box.get('loggedIn', defaultValue: false);
  }

  // CLEAR ALL
  static Future<void> logout() async {
    await _box.clear();
  }
}
