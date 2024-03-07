import 'package:firebase_core/firebase_core.dart';
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
        body:HomePage(),
        ) ,

      // routes: {
      //   '/':(context) =>const LoginScreen(),
      //   '/second_screen' :(context) =>const  SecondScreen(),
      // },
      );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

// Initialize Firebase App
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5),
        child: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              return const LoginScreen();
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),

    );
  }
}