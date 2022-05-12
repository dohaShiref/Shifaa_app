
import 'package:flutter/material.dart';
import 'package:iti_gp/screens/profile.dart';

class DoctorCard extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;
  var fees;
  var _location;
  var _availableTime;
  var index;
  var title;
  DoctorCard(
      this._name, this._description, this._imageUrl, this.fees, this._location,this._availableTime,this.index,this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: FittedBox(
              child: Material(
            color: Color.fromARGB(255, 235, 250, 252),
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196f3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    children: [
                  Container(
                    width: 100,
                    height: 100,

                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image.network(_imageUrl),
                    ),
                  ),
                  SizedBox(width: 50,)
                  ,
                  Container(
                    width: 150,


                      child: Text(_name,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          )),

                  )
                ]),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.description_rounded,
                        color: Colors.blue,
                      ),
                      Text(_description,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 34, 62),
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                      Text(_location,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 34, 62),
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.price_change,
                        color: Colors.blue,
                      ),
                      Text( fees+" EGP",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 34, 62),
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ))
            ,
            Padding(padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                MaterialButton(onPressed: (){
               },
               
                   color: Color.fromARGB(255, 194, 194, 194),
                   padding: EdgeInsets.symmetric(
                     horizontal: 20,
                     vertical: 20
                   ),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                   child: Text('Available ' + _availableTime,
                   style: TextStyle(color: Colors.black,fontSize: 16),
                   ),),
                  SizedBox(width: 50,) ,
               MaterialButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage(mode:(index+1),tile:title)));
               },
               
                   color: Colors.red,
                   padding: EdgeInsets.symmetric(
                     horizontal: 20,
                     vertical: 20
                   ),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                   child: Text('Book',
                   style: TextStyle(color: Colors.white,fontSize: 16),
                   ),)
                   
              ],
            ),)
            ]),
          )),
        ));
  }
}
