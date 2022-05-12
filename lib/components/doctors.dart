import 'package:flutter/material.dart';
import 'package:iti_gp/model/dactor_model.dart';
import 'package:iti_gp/screens/details.dart';
import 'package:iti_gp/screens/profile.dart';

class DoctorCard extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;

  DoctorCard(this._name, this._description, this._imageUrl);
  // DoctorModel model=
  // new DoctorModel(name: "DR: Muhamed", type: "Dentist", description: "muhamed nknkn;kk", fees: 150, image: "assests/doctor.jpg", lonLocation: 30,latLocation: 40,location: "cairo");
  //

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     // builder: (context) => DetailScreen(_name, _description, _imageUrl),
        //     builder: (context) => ProfilePage(mode: model ,),
        //
        //   ),
        // );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.asset(_imageUrl),
            title: Text(
              _name,
              style: TextStyle(
                color: Color.fromARGB(255, 9, 113, 206),
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              _description,
              style: TextStyle(
                color: Color.fromARGB(255, 9, 113, 206),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
