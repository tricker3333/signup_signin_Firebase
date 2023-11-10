import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_login/screens/home.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({super.key});

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  String email = "", pass = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: RoundedRectangleBorder(
              side: BorderSide(style: BorderStyle.solid)),
          title: Text('LoginPage'),
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
                  'Login Page',
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
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('User Not Found')));

                          print('Wrong password provided for that user.');
                        }
                      }
                    },
                    child: Text('Log in'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
