import 'package:flutter/material.dart';

import 'package:hotel_booking/features/auth/presentation/pages/login_screen.dart';
import 'package:hotel_booking/features/auth/presentation/pages/register_screen.dart';
import 'package:hotel_booking/screens/home_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';

  static final routes = <String, WidgetBuilder>{
    login: (context) => const LoginScreen(),
    register: (context) => const RegisterScreen(),
    home: (context) => const HomeScreen(),
  };
}
