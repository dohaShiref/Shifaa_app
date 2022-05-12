import 'package:flutter/material.dart';

class DoctorModel extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;
  var fees;
  var _availableTime;
  DoctorModel(this._name, this._description, this._imageUrl, this.fees,
      this._availableTime);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: EdgeInsets.only(top: 10),
      height: 250,
      child: ListView(
        children: <Widget>[
          Container(
              child: Material(
                color: Color.fromARGB(255, 250, 254, 255),
                elevation: 14.0,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color.fromARGB(128, 178, 213, 241),
                child: Column(children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(50.0),
                        child: Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topLeft,
                            image: AssetImage(_imageUrl)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 200,
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(_name,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 5, 8),
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          subtitle: Text(_description,
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 114, 115, 116),
                                fontWeight: FontWeight.normal,
                              )),
                        ))
                  ]),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_alarm,
                            color: Color.fromARGB(255, 124, 126, 128),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(fees,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.normal,
                                )),
                          )
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 50, bottom: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.red,
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Cancel Appointment',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              ))
        ],
      ),
    );
  }
}
