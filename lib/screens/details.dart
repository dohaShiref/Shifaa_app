import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;

  var SvgPicture;

  DetailScreen(this._name, this._description, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assests/detail_illustration.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
      )),
    );
  }
}
