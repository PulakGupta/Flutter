import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:promilo_app/login_screen.dart';
 

Future<void> main() async {
  await Firebase.initializeApp();
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

      // routes: {
      //   '/':(context) =>const LoginScreen(),
      //   '/second_screen' :(context) =>const  SecondScreen(),
      // },
      );
  }
}

