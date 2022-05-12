import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_gp/screens/DoctorModel.dart';

class AppointmentCard extends StatefulWidget {
  final String title;
  const AppointmentCard({Key? key, required this.title}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<AppointmentCard> createState() => Appintmentclass();
}

class Appintmentclass extends State<AppointmentCard> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final String textOfTitle;
    const primaryColor = Color.fromARGB(255, 255, 255, 255);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Text(
                      "Clinic Visit",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ),
        body: Container(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return DoctorModel(
                      'Doctor afaf zein',
                      'professor psychiatrist',
                      'assests/doctor3.png',
                      'Wednesday from 3 pm to 5 pm',
                      '3pm');
                })));
  }
}
