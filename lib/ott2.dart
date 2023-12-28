import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ottfirebase/formcontainer.dart';
import 'package:ottfirebase/homenew.dart';
import 'package:ottfirebase/ott3.dart';
import 'package:ottfirebase/toast.dart';

import 'abc.dart';
import 'auth.dart';



class ott2 extends StatefulWidget {
  const ott2({super.key});


  @override
  State<ott2> createState() => _ott2State();
}

class _ott2State extends State<ott2> {
  bool _isSigning = false;
  FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {


    final _formKey1 = GlobalKey<FormState>();
    return  Scaffold(

      body:Form(
        key: _formKey1,
        child: Column(
          children: [
            Container(
              height:850,
              width: 401,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/movie2.jpg",),fit: BoxFit.fill,
                )
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),

                            child: Container(
                                 color: Colors.white.withOpacity(0.5),
                                height: 400,
                                width: 250,



                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("LOGIN",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:FormContainerWidget(
                                      controller: _emailController,
                                      hintText: "Email",
                                      isPasswordField: false,
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:FormContainerWidget(
                                      controller: _passwordController,
                                      hintText: "Password",
                                      isPasswordField: true,
                                    )
                                  ),
                              GestureDetector
                                (
                                onTap: (){
                                  _signIn();
                                },

                                 child:Container(
                                      width: double.infinity,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child:_isSigning ? CircularProgressIndicator(color: Colors.white,): Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account?"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(builder: (context) => abc()),
                                                (route) => false,
                                          );
                                        },
                                        child: Text(
                                          "Sign Up",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),],

                ),
              ),
                  ),

              ),
    ],),
      ),







    );
  }
  void _signIn() async {

    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      showToast(message: "User is successfully signed in");
      Navigator.pushNamed(context, "/abc");
    } else {
      showToast(message: "some error occured");
    }
  }
}
