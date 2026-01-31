import '../../../../../core/api/api_client.dart';
import '../../../../../core/api/api_endpoints.dart';
import '../../models/user_model.dart';

class AuthRemoteDatasource {
  final ApiClient client;

  AuthRemoteDatasource(this.client);

  Future<UserModel> login(String email, String password) async {
    final response = await client.dio.post(
      ApiEndpoints.login,
      data: {
        'email': email,
        'password': password,
      },
    );

    return UserModel.fromJson(response.data);
  }

  Future<void> register(String name, String email, String password) async {
    await client.dio.post(
      ApiEndpoints.register,
      data: {
        'name': name,
        'email': email,
        'password': password,
      },
    );
  }
}
