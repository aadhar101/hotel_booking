import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/features/auth/presentation/providers/auth_provider.dart';
import 'package:hotel_booking/features/auth/presentation/pages/signup_page.dart';

class SignupPage extends ConsumerWidget {
  SignupPage({super.key});

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                controller: nameCtrl,
                decoration: const InputDecoration(labelText: "Name")),
            TextField(
                controller: emailCtrl,
                decoration: const InputDecoration(labelText: "Email")),
            TextField(
                controller: passCtrl,
                decoration: const InputDecoration(labelText: "Password")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await ref.read(AuthProvider).register({
                  "name": nameCtrl.text,
                  "email": emailCtrl.text,
                  "password": passCtrl.text,
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Signup Success")),
                );
              },
              child: const Text("Signup"),
            )
          ],
        ),
      ),
    );
  }
}
