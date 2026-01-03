import 'package:hive/hive.dart';
import '../models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<void> register(UserModel user);
  UserModel? login(String email, String password);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final Box<UserModel> box;

  AuthLocalDataSourceImpl(this.box);

  @override
  Future<void> register(UserModel user) async {
    await box.put(user.email, user);
  }

  @override
  UserModel? login(String email, String password) {
    final user = box.get(email);
    if (user != null && user.password == password) {
      return user;
    }
    return null;
  }
}
