import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_gp/screens/AppointmentCard.dart';
import 'package:iti_gp/screens/ProductCard.dart';

class MyActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30, top: 100),

        child: Container(
          // margin: EdgeInsets.only(left: 100),
            child: Column(children: [
              Row(children: <Widget>[
                SizedBox(width: 60),
                Text(
                  "YOUR CARD",
                  textAlign: TextAlign.center,
                  // style: TextStyle(
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(225, 0, 0, 0),
                  ),
                  // fontFamily: "RobotoMono",
                  // fontWeight: FontWeight.bold,
                  // fontSize: 24.0,
                  // shadows: <Shadow>[
                  //   Shadow(
                  //     offset: Offset(1.0, 1.0),
                  //     blurRadius: 3.0,
                  //     color: Color.fromARGB(226, 126, 116, 116),
                  //   )
                  //   ])
                ),
              ]),
              SizedBox(height: 30),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (ProductCard(title: ""))),
                      );
                    },
                    child: Container(
                      width: 160,
                      height: 170,
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
                              width: 140,
                              child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset("assests/pharmacylist.jpg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Product List",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(223, 29, 29, 29),
                                    fontSize: 16),
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
                              (AppointmentCard(title: ""))),
                        );
                      },
                      child: Container(
                        width: 160,
                        height: 170,
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
                                width: 140,
                                height: 100,
                                child: ClipRRect(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                    child: Image.asset("assests/Appointment.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Appointment List",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(223, 29, 29, 29),
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              )
            ])));
  }
}
