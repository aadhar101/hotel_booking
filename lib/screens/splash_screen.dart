import 'package:flutter/material.dart';
import '../features/auth/presentation/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image 1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Optional dark overlay
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          // Logo
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
