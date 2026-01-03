import 'package:flutter/material.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_user.dart';
import '../../domain/usecases/register_user.dart';
class AuthProvider extends ChangeNotifier {
  final LoginUser loginUser;
  final RegisterUser registerUser;

  AuthProvider({
    required this.loginUser,
    required this.registerUser,
  });

  bool login(String email, String password) {
    final user = loginUser(email, password);
    return user != null;
  }

  Future<bool> register(String name, String email, String password) async {
    await registerUser(
      User(name: name, email: email, password: password),
    );
    return true;
  }
}
