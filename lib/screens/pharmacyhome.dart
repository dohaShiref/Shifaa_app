import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:iti_gp/screens/pharm.dart';

import '../main.dart';

class PharmacyHome extends StatefulWidget {
  const PharmacyHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: no_logic_in_create_state
  State<PharmacyHome> createState() => _PharmacyHomePage();
}

class _PharmacyHomePage extends State<PharmacyHome> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // MaterialAccentColor bgColor;
    const primaryColor = Color.fromARGB(255, 9, 113, 206);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: primaryColor,
          title: Text(
            "Place your order",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        body: Container(
            child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      child: Text(
                    "Browse by Category",
                    style: TextStyle(
                        fontFamily: "RobotoMono",
                        // fontWeight: FontWeight.normal,
                        fontSize: 17.0),
                  )),
                ),
              ],
            ),
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (Pharm(textOfTitle: "motherAndBaby"))),
                  );
                },
                child: Container(
                  width: 120,
                  height: 140,
                  padding: new EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color.fromARGB(255, 253, 251, 249),
                    elevation: 10,
                    child: ListView(
                      //  mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 120,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.asset("assests/baby.jpg")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mother and Baby",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(223, 99, 98, 98),
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              (Pharm(textOfTitle: "Pandemic Essentials"))),
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 140,
                    padding: new EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color.fromARGB(255, 253, 251, 249),
                      elevation: 10,
                      child: ListView(
                        //  mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: 120,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                child: Image.asset("assests/pandemic.jpg")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Pandemic Essentials",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(223, 99, 98, 98),
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (Pharm(textOfTitle: "Antibiotics"))),
                  );
                },
                child: Container(
                  width: 120,
                  height: 140,
                  padding: new EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color.fromARGB(255, 253, 251, 249),
                    elevation: 10,
                    child: ListView(
                      //  mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 120,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.asset("assests/antibiotics.jpg")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Antibiotics",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(223, 99, 98, 98),
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                (Pharm(textOfTitle: "Eye Care Medication"))),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 140,
                      padding: new EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color.fromARGB(255, 253, 251, 249),
                        elevation: 10,
                        child: ListView(
                          //  mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: 120,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset("assests/eye.jpeg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Eye Care Medication",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(223, 99, 98, 98),
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                (Pharm(textOfTitle: "Diabetes Care"))),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 140,
                      padding: new EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color.fromARGB(255, 253, 251, 249),
                        elevation: 10,
                        child: ListView(
                          //  mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: 120,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset("assests/diabetes.jpg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                "Diabetes Care",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(223, 99, 98, 98),
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                (Pharm(textOfTitle: "Supplements & Vitamins"))),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 140,
                      padding: new EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color.fromARGB(255, 253, 251, 249),
                        elevation: 10,
                        child: ListView(
                          //  mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: 120,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset("assests/vitamins.jpeg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Supplements & Vitamins",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(223, 99, 98, 98),
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                (Pharm(textOfTitle: "Personal Care"))),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 140,
                      padding: new EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color.fromARGB(255, 253, 251, 249),
                        elevation: 10,
                        child: ListView(
                          //  mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: 120,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset("assests/personalcare.jpg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Personal Care",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(223, 99, 98, 98),
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                (Pharm(textOfTitle: "Oral Care"))),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 140,
                      padding: new EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color.fromARGB(255, 253, 251, 249),
                        elevation: 10,
                        child: ListView(
                          //  mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset("assests/oral.jpg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Oral Care",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(223, 99, 98, 98),
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                (Pharm(textOfTitle: "First Aid"))),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 140,
                      padding: new EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color.fromARGB(255, 253, 251, 249),
                        elevation: 10,
                        child: ListView(
                          children: <Widget>[
                            Container(
                              width: 120,

                              //  height: 150,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset("assests/firstaid.jpg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "First Aid",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(223, 99, 98, 98),
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ],
        )));
  }
}
