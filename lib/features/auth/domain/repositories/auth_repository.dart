import '../entities/user.dart';

abstract class AuthRepository {
  Future<void> register(User user);
  User? login(String email, String password);
}
