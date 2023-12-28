// import 'package:flutter/material.dart';
// import 'package:registrar/registrar.dart';
// import 'package:untitled/register.dart';
//
//
// class ott3 extends StatefulWidget {
//   const ott3({super.key});
//
//   @override
//   State<ott3> createState() => _ott3State();
// }
//
// class _ott3State extends State<ott3> {
//   Map userData = {};
//   final _formkey = GlobalKey<FormState>();
//   void main() => runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/',
//     routes: {'/': (context) => register()},
//   ));
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// body:
//       Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: (value){
//                 if(value==null|| !RegExp
//                   (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
//                   return "Enter Correct Email Address";
//                 }else{
//                   return null;
//                 }
//               },
//               decoration: InputDecoration(
//                   hintText: 'Email',
//                   labelText: 'Email',
//                   prefixIcon: Icon(
//                     Icons.email,
//                     color: Colors.lightBlue,
//                   ),
//                   errorStyle: TextStyle(fontSize: 18.0),
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.red),
//                       borderRadius:
//                       BorderRadius.all(Radius.circular(9.0)))),
//             ),
//           ),
//        
//      
//       TextFormField(
//         validator: (value){
//           if(value==null|| !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)){
//             //  r'^[0-9]{10}$' pattern plain match number with length 10
//             return "Enter Correct Phone Number";
//           }else{
//             return null;
//           }
//         },
//         decoration: InputDecoration(
//             hintText: 'Mobile',
//             labelText: 'Mobile',
//             prefixIcon: Icon(
//               Icons.phone,
//               color: Colors.grey,
//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.red),
//                 borderRadius:
//                 BorderRadius.all(Radius.circular(9)))),
//       ),
//         Center(
//             child: Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: Container(
//                 // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
//                 child: ElevatedButton(
//                    child:Text(
//                     'Register',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   onPressed: () {
//                     if (_formkey.currentState!.validate()) {
//                       print('form submiitted');
//                     }
//                   },
//
//                 ),
//
//                 width: MediaQuery.of(context).size.width,
//
//                 height: 50,
//               ),
//             )),
//         Center(
//           child: Padding(
//             padding: EdgeInsets.only(top: 20),
//             child: Center(
//               child: Text(
//                 'Or Sign Up Using',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//             ),
//           ),
//         ),
//         Center(
//           child: Padding(
//             padding: EdgeInsets.only(top: 20, left: 90),
//             child: Row(
//               children: [
//                 Container(
//                     height: 40,
//                     width: 40,
//                     child: Image.asset(
//                       'assets/google.png',
//                       fit: BoxFit.cover,
//                     )),
//                 Container(
//                   height: 70,
//                   width: 70,
//                   child: Image.asset(
//                     'assets/vishal.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 40,
//                   child: Image.asset(
//                     'assets/google.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Center(
//           child: Container(
//             padding: EdgeInsets.only(top: 60),
//             child: Text(
//               'SIGN IN',
//               style: TextStyle(
//                   fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         )
//         ],),
//      
//    
//     );
//   }
// }
//
// class RaisedButton {
// }
//
//
//    
//  
//
//
// class MultiValidator {
// }
//
// class Register {
// }


import 'package:flutter/material.dart';
import 'package:ottfirebase/ott2.dart';
//import 'package:ottfirebase/botott.dart';
//import 'package:ottfirebase/ott4.dart';
//import 'package:ottfirebase/ottlan.dart';

class ott3 extends StatefulWidget {
  const ott3({super.key});

  @override
  State<ott3> createState() => _ott3State();
}

class _ott3State extends State<ott3> {
  final _formKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Register',style: TextStyle(color: Colors.white),),
      ),
      body: Form(
        key: _formKey1,
        child: Column(
          children: [
            Container(
                height:350,
                width: 450,
                child: Image(image: AssetImage("assets/register.png",),fit: BoxFit.fill,),),
            Container(
              height: 80,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,color: Colors.blue,),
                  hintText: 'first name',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null|| !RegExp(r"^[a-zA-Z]").hasMatch(value)){
                    return "Enter Correct name";
                  }else{
                    return null;
                  }


                },
              ),
            ),
            Container(
              height: 80,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,color: Colors.green,),
                  hintText: 'last name',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null|| !RegExp(r"^[a-zA-Z]").hasMatch(value)){
                    return "Enter Correct name";
                  }else{
                    return null;
                  }


                },
              ),
            ),
            Container(height: 80,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.lightBlue,
                  ),
                  hintText: 'Email id',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null|| !RegExp
                    (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                    return "Enter Correct Email Address";
                  }else{
                    return null;
                  }
                },

              ),
            ),
            Container(height: 80,width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.call,color: Colors.black,),
                  hintText: 'Mobile Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null|| !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)){
                    //  r'^[0-9]{10}$' pattern plain match number with length 10
                    return "Enter Correct Phone Number";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              {
                if(_formKey1.currentState!.validate())
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ott2()));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registered successfully")));
                }

              };
            }, child: Text('Register',style: TextStyle(fontSize: 20,color: Colors.white),),style: ElevatedButton.styleFrom(fixedSize: Size(250, 50),backgroundColor: Colors.blue),),

          ],
        ),
      ),
    );
  }
}

