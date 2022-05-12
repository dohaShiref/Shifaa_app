import 'package:flutter/material.dart';
import 'package:iti_gp/screens/home.dart';

import 'login.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assests/onboarding_illustration.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 6,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 8,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(left: 120.0, top: 0),
                            child: Text.rich(
                              TextSpan(
                                text: 'S ',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 206, 9, 9),
                                  //  decoration: TextDecoration.underline
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'h i f a a',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 9, 113, 206))),

                                  // can add more TextSpans here...
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 140,
                          margin: const EdgeInsets.only(top: 30),
                          child: MaterialButton(
                            height: 45,
                            minWidth:120 ,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            color: Colors.orange,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'Get Started',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
