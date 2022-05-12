import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iti_gp/MainScreen.dart';
import 'package:iti_gp/screens/OnboardingScreen.dart';
import 'package:iti_gp/screens/home.dart';

import 'model/dactor_model.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        'home': (context) =>  homeScreen(),

      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:  ProfilePage(mode: model ,),
        home: OnboardingScreen(),
    );
  }
}
