import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/onboardingScreen2.dart';
import 'onboardingScreen2.dart';

class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Continue"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => OnboardingScreen2()),
            );
          },
        ),
      ),
    );
  }
}
