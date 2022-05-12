import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:iti_gp/screens/DoctorCard.dart';
import 'package:iti_gp/screens/profile.dart';

import '../model/dactor_model.dart';
import 'SearchForDoctors.dart';

class DoctorCards extends StatelessWidget {
  const DoctorCards({Key? key,required this.CategoryName}) : super(key: key);
  final String CategoryName;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Doctors'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue[50]),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body:  MyStatelessWidget(CatTilt:CategoryName),
      ),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {

  MyStatelessWidget( {Key? key,required this.CatTilt}) : super(key: key);
   final String CatTilt;
  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}
var myDoctor;
String MyTitle="";
class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  List<DoctorModel> model=[];
  // new DoctorModel(name: "DR: Muhamed", type: "Dentist", description: "muhamed nknkn;kk", fees: 150, image: "assests/doctor.jpg",location: "cairo",
  //     latLocation: 30.333,lonLocation: 31.8786,appointment: ["from11 am to 3pm"]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final Future<FirebaseApp> _future = Firebase.initializeApp();
    MyTitle=widget.CatTilt;
    getDoctor(model);
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
      return
        DoctorCard(myDoctor['doctor'+(index+1).toString()]['name'],myDoctor['doctor'+(index+1).toString()]['specialization'],
            myDoctor['doctor'+(index+1).toString()]['photo'],myDoctor['doctor'+(index+1).toString()]['fees'].toString(),
            myDoctor['doctor'+(index+1).toString()]['address'],myDoctor['doctor'+(index+1).toString()]['appointment']['app1'],index,MyTitle);
      // Card(
      //   color: Colors.blueGrey[50],
      //   margin: const EdgeInsets.all(20),
      //   elevation: 8,
      //   shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //   clipBehavior: Clip.antiAlias,
      //   child: Column(
      //     children: [
      //       ListTile(
      //         title: Text( myDoctor['doctor'+(index+1).toString()]['name']),
      //         subtitle: Text(
      //         myDoctor['doctor'+(index+1).toString()]['specialization']
      //           ,style: TextStyle(color: Colors.red[700]),
      //         ),
      //       ),
      //
      //       ListTile(
      //         title: Text('Location :'+ myDoctor['doctor'+(index+1).toString()]['address'],
      //             style: TextStyle(color: Colors.black)),
      //       ),
      //       ListTile(
      //         title: Text('Fees : '+ myDoctor['doctor'+(index+1).toString()]['fees'].toString()+" EGP",
      //             style: TextStyle(color: Colors.black)),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(50, 1, 50, 1),
      //         child: TextField(
      //           decoration: InputDecoration(
      //             border: OutlineInputBorder(),
      //             labelText:  myDoctor['doctor'+(index+1).toString()]['appointment']['app1'],
      //           ),
      //         ),
      //       ),
      //       ButtonBar(
      //         alignment: MainAxisAlignment.center,
      //         children: [
      //           // ignore: deprecated_member_use
      //           FlatButton(
      //             textColor: const Color(0xFF6200EE),
      //             onPressed: () {
      //               setState(() {
      //
      //               });
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => ProfilePage(mode:(index+1),)));
      //             },
      //             child: const Text('Book',
      //                 style: TextStyle(
      //                     fontSize: 15,
      //                     color: Color.fromARGB(255, 216, 22, 8))),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // )
      ;}
    );
  }
}
Future<void> getDoctor(myData) async {

  DatabaseReference reference =
  FirebaseDatabase.instance.ref().child("doctors").child(MyTitle);
  final snapshot = await reference.get(); // you should use await on async methods
  if (snapshot.value != null) {
    var values=snapshot.value;
    myData=values;
    myDoctor=myData;
    // print('Data : ${myData}');

  }
}