import 'package:flutter/material.dart';
import 'package:iti_gp/screens/details.dart';

class CategoryCard extends StatelessWidget {
  var _title;
  var _imageUrl;
  var _bgColor;
  Widget ourscreen;
  CategoryCard(this._title, this._imageUrl, this._bgColor, this.ourscreen);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ourscreen),
          );
        },
        child: Container(
            width: 130,
            height: 160,
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 140,
                    height: 177,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        _title,
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 113, 206),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 94,
                    width: 94,
                    decoration: BoxDecoration(
                      color: _bgColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(
                          _imageUrl,color: Colors.white,width: 30,height: 30,
                        )),
                  ),
                ),
              ],
            )));
  }
}
