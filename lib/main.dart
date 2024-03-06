import 'package:flutter/material.dart';
import 'package:promilo_app/login_screen.dart';

void main() {
  runApp(const Promilo());
}

class Promilo extends StatelessWidget {
  const Promilo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:LoginScreen(),
        ) ,

      // initialRoute: 'login_screen',
      // routes: {'login_screen' : (context) => const LoginScreen()},
      );
  }
}