// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iti_gp/screens/button.dart';

import 'Register.dart';
import 'home.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email = '', _password = '', _error='';
  Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Future<void> loginUser() async {
    if (!_formKey.currentState!.validate()) return;
    //showLoading(context);
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
          Navigator.of(context).pushReplacementNamed('home');
     // Navigator.push(
      //    context, MaterialPageRoute(builder: (context) => searchCategory()));
      //Navigator.of(context)
      //    .push(MaterialPageRoute(builder: (context) => (searchCategory())));
      _error = '';
    } catch (e) {
      print(e.toString());
      
    }
    //hideLoading(context);
  }
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
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
                        labelText: 'Enter your email',
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
                  OriginalButton(
                      text: 'Login',
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          loginUser();
                          // Navigator.of(context).pushReplacementNamed('home');
                          // await authBase.loginWithEmailAndPassword(_email, _password);
                        } else {
                          // await authBase.registerWithEmailAndPassword(_email, _password);

                        }
//                  print(_email);
//                  print(_password);
                      }),
                  SizedBox(height: 6),
                  Text(_error ,style: TextStyle(color: Colors.red),),
                  SizedBox(height: 6),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            ( Register())),
                      );
                    },
                    child: Text(
                      'Don\'t have an account?',
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

