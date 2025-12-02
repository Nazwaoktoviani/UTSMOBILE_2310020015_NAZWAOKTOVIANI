import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Wisata Indonesia", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password')),
            const SizedBox(height: 10),
            TextButton(onPressed: () {}, child: const Text('Lupa Password')),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/list'),
              child: const Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}