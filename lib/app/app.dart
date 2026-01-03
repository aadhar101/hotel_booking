import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_routes.dart';
import '../core/services/hive_service.dart';
import '../features/auth/data/datasources/auth_local_datasource.dart';
import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/domain/usecases/login_user.dart';
import '../features/auth/domain/usecases/register_user.dart';
import '../features/auth/presentation/providers/auth_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localDataSource =
        AuthLocalDataSourceImpl(HiveService.userBox);

    final authRepository =
        AuthRepositoryImpl(localDataSource);

    return ChangeNotifierProvider<AuthProvider>(
      create: (_) => AuthProvider(
        loginUser: LoginUser(authRepository),
        registerUser: RegisterUser(authRepository),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.login,
        routes: AppRoutes.routes,
      ),
    );
  }
}
