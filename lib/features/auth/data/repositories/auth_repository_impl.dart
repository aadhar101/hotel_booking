import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl(this.localDataSource);

  @override
  Future<void> register(User user) async {
    await localDataSource.register(UserModel.fromEntity(user));
  }

  @override
  User? login(String email, String password) {
    final user = localDataSource.login(email, password);
    if (user == null) return null;
    return User(
      name: user.name,
      email: user.email,
      password: user.password,
    );
  }
}
