import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotel Booking Home")),
      body: Center(
        child: Text(
          "Welcome to Hotel Booking App!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
