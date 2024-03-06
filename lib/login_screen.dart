

import 'package:custom_signin_buttons/button_data.dart';
import 'package:custom_signin_buttons/button_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('promilo',
          style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const Text('Hi, Welcome Back!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.only(right: 110),
              child:const Text('Please Sign in to continue',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Email or Mob No.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 200),
              child: TextButton(onPressed:() {
                
              },
              child: const Text('Sign In With OTP',
              style: TextStyle(
                fontSize: 20
              ),)),
            ),

            Container(
              padding: const EdgeInsets.only(right: 250),
              child:const Text('Password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Row(
                children: [
                   Container(
                    padding: const EdgeInsets.only(left: 10),
                     child: Checkbox(value: isChecked, onChanged: (bool? value) {
                                     setState(() {
                                     isChecked = value!;
                                     });
                                     },
                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                     ),

                   ),
                  const Text('Remember Me'),
                  Container(
                    padding: const EdgeInsets.only(left: 70),
                    child: TextButton(onPressed:() {
                      
                    },
                    child: const Text('Forget Password',
                    style: TextStyle(
                      fontSize: 20
                    ),)),
                  ),
                ],
              ), 

              const SizedBox(height: 25,),
          
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: const Color.fromARGB(255, 8, 133, 236),
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text('Submit',
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    ) ,
                    onPressed: () {
                      
                    }, 
                    ),
                ),
                const SizedBox(height: 20,),

                Container(
                  padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Row(
                    
                      children: <Widget>[
                          const Expanded(
                              child: Divider(
                                 color: Color.fromARGB(255, 195, 194, 194),
                                 thickness: 1,
                              )
                          ),       
                
                          Container(
                            padding: const EdgeInsets.only(right: 5,left: 5),
                            child:const  Text("or",
                            style: TextStyle(color: Colors.black,
                             fontSize: 20),  
                            ),
                          ),      
                
                          const Expanded(
                              child: Divider(
                                 color: Color.fromARGB(255, 195, 194, 194),
                                 thickness: 1,
                              )
                          ),
                      ]
                    ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.only(left: 85),
                  child: Row(
                    children: [
                      SignInButton(
                        button: Button.Google,
                        mini: true,
                        iconSize: 30,
                      ),
                      const SizedBox(width: 10),
                      SignInButton(
                        button: Button.LinkedIn,
                        mini: true,
                      ),
                      const SizedBox(width: 10),
                      SignInButton(
                        button: Button.Facebook,
                        mini: true,
                      ),
                      const SizedBox(width: 10),
                      SignInButton(
                        button: Button.InstagramGradient,
                        mini: true,
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                          onPressed: () {}, 
                          icon: const Icon(FontAwesomeIcons.whatsapp,
                          size: 30,)
                          ),
                    ]
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text('Business User?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                                ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: TextButton(onPressed: (){},
                            child: const Text('Login Here',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            )
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 35,),
                      Column(
                        children: [
                           const Text("Don't have an account",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                                ),
                          Padding(
                            padding: const EdgeInsets.only(left:100),
                            child: TextButton(onPressed: (){},
                            child: const Text('Sign Up',
                            style: TextStyle(
                              fontSize: 20
                            ),
                            ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                const SizedBox( height:  10,),
                
                   const Center(child: Text("By continuying, you agree to")),
                   const SizedBox(height: 6,),
                Container(
                  padding:const  EdgeInsets.only(left: 80),
                  child: const Row(
                    children: [
                       Text("Promilo's"),
                       Text("Terms of Use & Privacy Policy",
                       style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                )
                
        

           
        ],
        ),
      ),
    );
  }
}