import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Login Page',
          style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
