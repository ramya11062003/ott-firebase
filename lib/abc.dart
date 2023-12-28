import 'dart:js';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'formcontainer.dart';
import 'login.dart';
import 'package:ottfirebase/toast.dart';

class abc extends StatefulWidget {
  const abc({super.key});

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isSigningUp = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Expanded(child: Text('Register', style: TextStyle(color: Colors.white),)),
      ),
      body: Column(
        children: [
          Text(
            "Sign Up",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),

          FormContainerWidget(
            controller: _usernameController,
            hintText: "Username",
            isPasswordField: false,
          ),

          Container(height: 80,
            width: 300,
            child: FormContainerWidget(

              controller: _emailController,
              hintText: "Email",
              isPasswordField: false,
            ),
          ),
          Container(height: 80, width: 300,
            child: FormContainerWidget(
              controller: _passwordController,
              hintText: "Password",
              isPasswordField: true,
            ),
          ),

          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              _signUp();
            },
            child: Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: isSigningUp ? CircularProgressIndicator(
                    color: Colors.white,) : Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?"),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()),
                            (route) => false);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ],


      ),

    );
  }


  void _signUp() async {
    setState(() {
      isSigningUp = true;
    });

    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });
    if (user != null) {
      showToast(message: "User is successfully created");
      Navigator.pushNamed(context as BuildContext, "/homenew");
    } else {
      showToast(message: "Some error happend");
    }
  }
}
