import 'package:flutter/material.dart';
<<<<<<< HEAD
import '../features/auth/presentation/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
=======
import 'package:hotel_booking/screens/onboardingscreen1.dart';
import 'onboardingscreen1.dart'; // Import Onboarding 1

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
>>>>>>> 817aa15f916d7d79eae5e30f5c34899ff61abdea
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
<<<<<<< HEAD
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
=======
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => OnboardingScreen1()),
>>>>>>> 817aa15f916d7d79eae5e30f5c34899ff61abdea
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
=======
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              "Hotel Booking",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange[800],
              ),
            ),
          ],
        ),
>>>>>>> 817aa15f916d7d79eae5e30f5c34899ff61abdea
      ),
    );
  }
}
