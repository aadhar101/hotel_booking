import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
<<<<<<< HEAD
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to Hotel Booking Dashboard',
          style: TextStyle(fontSize: 20),
        ),
=======
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotel Booking Home")),
      body: Center(
        child: Text("Welcome to Hotel Booking App!", style: TextStyle(fontSize: 24)),
>>>>>>> 817aa15f916d7d79eae5e30f5c34899ff61abdea
      ),
    );
  }
}
