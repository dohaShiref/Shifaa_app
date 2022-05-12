
import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_gp/model/dactor_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key, required this.mode,required this.tile}) : super(key: key);
  final int mode;
  final String tile;

  @override
  State<ProfilePage> createState() => _MyHomePageState();
}
int? model_index;
String? myTitle;
var mycurrentDoctor;
var myKey = GlobalKey<ScaffoldState>();
class _MyHomePageState extends State<ProfilePage> {

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng( mycurrentDoctor['longitude'], mycurrentDoctor['latitude']),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng( mycurrentDoctor['longitude'], mycurrentDoctor['latitude']),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

   DoctorModel? currentDoctor;

  @override
  void initState() {
    super.initState();
    getUserInfo(currentDoctor);
    model_index = widget.mode;
    myTitle=widget.tile;
    setState(() {});
  }

  Widget _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        BackButton(color: Theme.of(context).primaryColor),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Image.network(mycurrentDoctor['photo']),
            DraggableScrollableSheet(
              maxChildSize: .8,
              initialChildSize: .6,
              minChildSize: .6,
              builder: (context, scrollController) {
                return Container(
                  height: MediaQuery.of(context).size.height * .5,
                  padding: EdgeInsets.only(left:19,right:19,top: 16),//symmetric(horizontal: 19, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                mycurrentDoctor['name'],
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.check_circle,
                                  size: 18,
                                  color: Theme.of(context).primaryColor),
                              Spacer(),

                            ],
                          ),
                          subtitle: Text(
                            mycurrentDoctor['specialization'],
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                        ),
                        Divider(
                          thickness: .3,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Image.asset("assests/fees_icon.png",width: 30,height: 30,),
                              SizedBox(
                                width: 10,
                              ),
                              Text( mycurrentDoctor['fees'].toString()
                              +" EGP")
                            ],
                          ),
                        ),
                        Divider(
                          thickness: .3,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Location", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                            ],
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 250,
                          color: Colors.black,

                          child:
                          GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                        Divider(
                          thickness: .3,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Choose your appointment", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                            ],
                          ),
                        ),
                        buildCategeryList(),
                        Divider(
                          thickness: .3,
                          color: Colors.grey,
                        ),
                        Text("About", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            mycurrentDoctor['about'],
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withAlpha(150)
                              ),
                              child: Icon(Icons.call, color: Colors.white,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FlatButton(
                              color: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              onPressed: () {},
                              child: Text("Make an appointment", style: TextStyle(fontSize: 14,color: Colors.white)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            _appbar(),
          ],
        ),
      ),
    );
  }

}
Future<void> getUserInfo(myData) async {
  DatabaseReference reference =
  FirebaseDatabase.instance.ref().child("doctors").child(myTitle!).child("doctor"+model_index.toString());
  final snapshot = await reference.get(); // you should use await on async methods
  if (snapshot.value != null) {
    var values=snapshot.value;
    myData=values;
    // print('Data : ${myData['product1']['title']}');
    print('len******************************* : ${myData}');
    mycurrentDoctor=myData;
  }
}
appointmentCard(index){
  return    Container(
    width: 100,
    height: 150,
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        Container(
            width:100,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0),topRight: Radius.circular(12.0)),
            ),
            child:
            Center(child: Text("Today", style: TextStyle(fontSize: 14,color: Colors.white)))),
        Container(
            width:100,
            height: 80,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(mycurrentDoctor['appointment']['app'+index], style: TextStyle(fontSize: 16)),
                ),
                // Text("To", style: TextStyle(fontSize: 14)),
                // Text("5 pm", style: TextStyle(fontSize: 14)),
              ],
            )
        ),
        GestureDetector(
          onTap: (){
            myKey.currentState?.showSnackBar(
              SnackBar(
                backgroundColor: Colors.blue,
                duration:
                const Duration(milliseconds: 500),
                content: Row(children: <Widget>[
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  Text(
                    "Your appointment has been successfully booked",
                  ),
                ]),
              ),
            );
          },
          child: Container(
              width:100,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.0),bottomRight: Radius.circular(12.0)),
              ),
              child:
              Center(child: Text("Book", style: TextStyle(fontSize: 14,color: Colors.white))),
          ),
        ),
      ],
    ),

  );
}
buildCategeryList() {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          appointmentCard("1"),
          SizedBox(
            width: 10,
          ),
          appointmentCard("2"),
          SizedBox(
            width: 10,
          ),
          appointmentCard("3"),
          SizedBox(
            width: 10,
          ),
      appointmentCard("4"),
      SizedBox(
        width: 10,),
      appointmentCard("5"),
      SizedBox(
        width: 10,)
        ],
      ));
}


