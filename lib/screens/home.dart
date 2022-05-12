// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myapp/screens/clinichome.dart';

// import 'package:myapp/screens/pharm.dart';
// import 'package:myapp/screens/pharmacyhome.dart';

// import '../main.dart';

// class ProjectHome extends StatefulWidget {
//   const ProjectHome({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   // ignore: no_logic_in_create_state
//   State<ProjectHome> createState() => _ProjectHomePage();
// }

// class _ProjectHomePage extends State<ProjectHome> {
//   void _incrementCounter() {
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     // MaterialAccentColor bgColor;
//     const primaryColor = Color.fromARGB(255, 229, 231, 233);
//     return Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: primaryColor,
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                       child: Text.rich(
//                     TextSpan(
//                       text: 'S ',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 206, 9, 9),
//                         //  decoration: TextDecoration.underline
//                       ),
//                       children: <TextSpan>[
//                         TextSpan(
//                             text: 'h i f a a',
//                             style: TextStyle(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color.fromARGB(255, 9, 113, 206))),

//                         // can add more TextSpans here...
//                       ],
//                     ),
//                   )

//                       // Text("SHIFAA",
//                       //     textAlign: TextAlign.left,
//                       //     style: TextStyle(
//                       //         fontWeight: FontWeight.bold,
//                       //         fontSize: 22.0,
//                       //         color: Color.fromARGB(255, 9, 113, 206)
//                       //         )
//                       //         ),
//                       ),
//                 ],
//               ),
//               Container()
//             ],
//           ),
//         ),
//         body: Container(
//             child: ListView(children: [
//           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => (const searchCategory())),
//                 );
//               },
//               child: Container(
//                 margin: EdgeInsets.only(top: 20),
//                 width: 140,
//                 height: 150,
//                 padding: new EdgeInsets.all(8.0),
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   color: Color.fromARGB(255, 253, 251, 249),
//                   elevation: 10,
//                   child: ListView(
//                     //  mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Container(
//                         width: 140,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           child: Image.asset(
//                             "visitclinic.jpg",
//                             height: 90,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Clinic Visit",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(color: Colors.black, fontSize: 17),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) =>
//                             (PharmacyHome(title: "Pandemic Essentials"))),
//                   );
//                 },
//                 child: Container(
//                   width: 140,
//                   height: 150,
//                   padding: new EdgeInsets.all(8.0),
//                   child: Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     color: Color.fromARGB(255, 253, 251, 249),
//                     elevation: 10,
//                     child: ListView(
//                       //  mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Container(
//                           width: 140,
//                           child: ClipRRect(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10.0)),
//                               child: Image.asset(
//                                 "pharm.jpeg",
//                                 height: 90,
//                               )),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             "Pharmacy",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(color: Colors.black, fontSize: 17),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 )),
//           ]),
//           Container(
//             decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 219, 243, 248),
//                 borderRadius: BorderRadius.all(Radius.circular(10.0))),
//             padding: EdgeInsets.all(15),
//             margin: EdgeInsets.all(25),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Book Clinic Appointment",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 40,
//                     margin: EdgeInsets.only(bottom: 10),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(5)),
//                     child: Center(
//                       child: TextField(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => (const searchCategory())),
//                           );
//                         },
//                         keyboardType: TextInputType.multiline,
//                         //  maxLines: null,
//                         //  controller: myController,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.search),
//                           hintText: 'Search for doctor or speciality..',
//                           border: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color.fromARGB(255, 104, 104, 104))),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 9, 113, 206),
//                 borderRadius: BorderRadius.all(Radius.circular(10.0))),
//             padding: EdgeInsets.all(15),
//             margin: EdgeInsets.all(25),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //  crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("Healthy Tips : ",
//                           style: TextStyle(
//                               decoration: TextDecoration.underline,
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white)),
//                     ),
//                     Text("- Eat a healthy diet",
//                         style: TextStyle(
//                             fontSize: 16,
//                             //  fontWeight: FontWeight.bold,
//                             color: Colors.white)),
//                     Text("- Consume less salt and sugar",
//                         style: TextStyle(
//                             fontSize: 16,
//                             //  fontWeight: FontWeight.bold,
//                             color: Colors.white)),
//                     Text("- Avoid harmful use of alcohol",
//                         style: TextStyle(
//                             fontSize: 16,
//                             //  fontWeight: FontWeight.bold,
//                             color: Colors.white)),
//                     Text("- Be active",
//                         style: TextStyle(
//                             fontSize: 16,
//                             //  fontWeight: FontWeight.bold,
//                             color: Colors.white)),
//                     Text("- Don't smoke",
//                         style: TextStyle(
//                             fontSize: 16,
//                             //  fontWeight: FontWeight.bold,
//                             color: Colors.white))
//                   ],
//                 ),
//                 Image.asset(
//                   "healthtips.jpg",
//                   // height: 140,
//                   width: 160,
//                 )
//               ],
//             ),
//           ),
//         ])));
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:iti_gp/components/category.dart';
import 'package:iti_gp/components/doctors.dart';
import 'package:iti_gp/components/search.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iti_gp/model/product.dart';
import 'package:iti_gp/screens/SearchForDoctors.dart';
import 'package:iti_gp/screens/clinichome.dart';
import 'package:iti_gp/screens/pharmacyhome.dart';

import '../model/dactor_model.dart';


class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var mydoctors;
User userData = FirebaseAuth.instance.currentUser!;
final uid = userData.uid;
DatabaseReference referenceUser =
FirebaseDatabase.instance.ref().child("users").child(uid);
class _HomeScreenState extends State<HomeScreen> {
  List<product> mydoctor=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      mydoctors= getTopDoctor(mydoctor) ;
    });

    // print('Data : ${mydoctors}');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 238, 244, 247),
      child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              /*Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Shifaa',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.blue),
                  )),
              SizedBox(
                height: 50,
              ),*/
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color.fromARGB(255, 9, 113, 206)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 0),
              //   child: Text(
              //     'Categories',
              //     style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         color: Color.fromARGB(255, 9, 113, 206),
              //         fontSize: 18),
              //   ),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              buildCategeryList(),
              SizedBox(
                height: 40,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: Search(),
              // ),

              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(197, 9, 114, 206),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Book Clinic Appointment",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: TextField(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        (const searchCategory())),
                              );
                            },
                            keyboardType: TextInputType.multiline,
                            //  maxLines: null,
                            //  controller: myController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search for doctor or speciality..',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 104, 104, 104))),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 113, 206),
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(),

              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(206, 9, 114, 206),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Healthy Tips : ",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          Text("- Eat a healthy diet",
                              style: TextStyle(
                                  fontSize: 16,
                                  //  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("- Consume less salt and sugar",
                              style: TextStyle(
                                  fontSize: 16,
                                  //  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("- Avoid harmful use of alcohol",
                              style: TextStyle(
                                  fontSize: 16,
                                  //  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("- Be active",
                              style: TextStyle(
                                  fontSize: 16,
                                  //  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("- Don't smoke",
                              style: TextStyle(
                                  fontSize: 16,
                                  //  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    Image.asset(
                      "assests/healthtips.jpg",
                      // height: 140,
                      width: 100,
                    )
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}

buildCategeryList() {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryCard('Clinic Visit', 'assests/icons/hospital-building.png',
              Color.fromARGB(197, 9, 114, 206), SearchForDoctors()),
          SizedBox(
            width: 10,
          ),
          // CategoryCard('Home Visit', 'assests/icons/home-address.png',
          //     const Color.fromARGB(197, 9, 114, 206), SearchForDoctors()),
          // SizedBox(
          //   width: 10,
          // ),

          CategoryCard(
              'Pharmacy',
              'assests/icons/medicines.png',
              Color.fromARGB(197, 9, 114, 206),
              PharmacyHome(
                title: "",
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ));
}

buildDoctorList() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: StreamBuilder<DatabaseEvent>(
        stream: referenceUser.onValue.asBroadcastStream(),
        builder:(BuildContext context,AsyncSnapshot<DatabaseEvent> snapshot) {
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }
          else{
            return  ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return
                    Column(
                      children: [
                        DoctorCard(mydoctors['doctor'+(index+1).toString()]['name'], mydoctors['doctor'+(index+1).toString()]['specialization'], mydoctors['doctor'+(index+1).toString()]['photo']),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );

                }
            );
          }
        },
      )
    ),
  );
}
Future<void> getTopDoctor(myData) async {

  DatabaseReference reference =
  FirebaseDatabase.instance.ref().child("Top doctors");
  final snapshot = await reference.get(); // you should use await on async methods
  if (snapshot.value != null) {
    myData.clear();
    var len=myData.hashCode;
    var values=snapshot.value;
    myData=values;
    mydoctors=myData;
    //print('Data : ${myData}');

  }
}
