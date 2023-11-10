import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_login/screens/home.dart';
import 'package:simple_login/screens/loginpg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email = "", pass = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: RoundedRectangleBorder(
              side: BorderSide(style: BorderStyle.solid)),
          title: Text('Register Page'),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign Up Page',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Username'),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (Value) {
                    email = Value;
                  },
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Password'),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (Value) {
                    pass = Value;
                  },
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                ElevatedButton(
                    onPressed: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: pass);
                        Get.to(() => HomePg());
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                    },
                    child: Text('Sign Up'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
