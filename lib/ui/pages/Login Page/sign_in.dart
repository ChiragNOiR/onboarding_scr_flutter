import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "/login";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(child: Center(child: Text("Login"),)),
    );
  }
}