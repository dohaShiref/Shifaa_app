// ignore_for_file: deprecated_member_use


import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:iti_gp/screens/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iti_gp/screens/login.dart';

import '../model/user_model.dart';
import 'home.dart';

class Register extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email = '',
      _password = '',
      _name = '',
      _phone = '',
      _loc = '',
      _visa = '';

  Register({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> registerUser() async {
    if (!_formKey.currentState!.validate()) return;
    //showLoading(context);
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);
      UserModel user =new UserModel(name: _name, email: _email, password: _password, phone:  _phone, creditNum: _visa, location: _loc);
      Future<void> getCurrentUser() async {
        User userData = await FirebaseAuth.instance.currentUser!;
        final uid = userData.uid;
        final DatabaseReference reference =
        FirebaseDatabase.instance.ref().child("users").child(uid);
        reference.push().set(user.toJson());
        print("##############"+uid);
      }
      getCurrentUser();

          Navigator.of(context).pushReplacementNamed('home');
     // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
     // Navigator.of(context)
       //   .push(MaterialPageRoute(builder: (context) => (Login())));
      
      // hideLoading(context);
    } catch (e) {
      print(e.toString());
      // hideLoading(context);
    }
  }
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            Center(
                child: Column(
              children: <Widget>[
                SizedBox(height: 65),
                Text(
                  '',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2),
                ),
                Container(child: Image.asset('assests/logo.png', height: 250))
              ],
            )),
          ]),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your Name',
                        hintText: 'ex: User Name',
                        prefixIcon: Icon(Icons.description_rounded)),
                    onChanged: (value) {
                      _name = value;
                    },
                    validator: (value) =>
                        value!.isEmpty || !RegExp(r'[a-zA-Z]').hasMatch(value)
                            ? 'You must enter a valid Name'
                            : null,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your Email',
                        hintText: 'ex: test@gmail.com',
                        prefixIcon: Icon(Icons.email)),
                    onChanged: (value) {
                      _email = value;
                    },
                    validator: (value) => value!.isEmpty ||
                            !RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                .hasMatch(value)
                        ? 'You must enter a valid email'
                        : null,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock)),
                    obscureText: true,
                    onChanged: (value) {
                      _password = value;
                    },
                    validator: (value) => value!.length <= 6
                        ? 'Your password must be larger than 6 characters'
                        : null,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your Phone number',
                        prefixIcon: Icon(Icons.phone)),
                
                    onChanged: (value) {
                      _phone = value;
                    },
                    validator: (value) => value!.length != 11
                        ? 'Your Phone must be 11 Number'
                        : null,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your credit card number',
                        prefixIcon: Icon(Icons.card_membership)),
                    obscureText: true,
                    onChanged: (value) {
                      _visa = value;
                    },
                    validator: (value) => value!.length <= 11
                        ? 'Your  must enter valid Number'
                        : null,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your Location',
                        prefixIcon: Icon(Icons.location_pin)),
                  
                    onChanged: (value) {
                      _loc = value;
                    },
                    validator: (value) =>
                        value!.isEmpty || !RegExp(r'[a-zA-Z]').hasMatch(value)
                            ? 'You must enter a valid location'
                            : null,
                  ),
                  SizedBox(height: 20),
                  OriginalButton(
                      text: 'Register',
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          registerUser();
                          // await authBase.loginWithEmailAndPassword(_email, _password);
                        } else {
                          // await authBase.registerWithEmailAndPassword(_email, _password);

                        }
//                  print(_email);
//                  print(_password);
                      }),
                  SizedBox(height: 6),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            ( Login())),
                      );
                    },
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          )
        ])));
  }

  
}
