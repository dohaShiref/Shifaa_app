// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:iti_gp/model/product.dart';
import 'package:iti_gp/screens/pharmacyhome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

import '../main.dart';

class Pharm extends StatefulWidget {
  const Pharm({Key? key, required this.textOfTitle}) : super(key: key);
  final String textOfTitle;
  @override
  // ignore: no_logic_in_create_state
  State<Pharm> createState() => PharmClass();
}

var myProducts;
String? myTitle;
class PharmClass extends State<Pharm> {
  var data;

  void _incrementCounter() {
    setState(() {});
  }

  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');
  var myKey = GlobalKey<ScaffoldState>();

  final List<String> srcimages = [
    "assests/bebelac1.png",
    "assests/bebelac2.jpg",
    "assests/nanmilk.jpg",
    "assests/babycheckone.jpg",
    "assests/herobaby.jpg",
    "assests/johnson.jpg",
    "assests/pampers.jpg"
  ];
  final List<String> titles = [
    "Bebelac 1 Milk Powder 400 gms",
    "Bebelac 2 Milk Powder 500 gms",
    "Nan Comfort Milk Powder 380 gms",
    "Baby Check One",
    "Hero Baby 3 fruits Jar 125 gm",
    "Johnsons Baby Oil Sleep Time",
    "Pampers Premium"
  ];
  final List<String> price = [
    "EGP 75",
    "EGP 115",
    "EGP 130",
    "EGP 85",
    "EGP 90",
    "EGP 110",
    "EGP 80"
  ];
  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  final myController = TextEditingController();
  var counter = 0;
  var total = 0;

  List <product> myProduct=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final Future<FirebaseApp> _future = Firebase.initializeApp();
    setState(() {
      myTitle=widget.textOfTitle;
      getCurrentOnLineUserInfo(myProduct,widget.textOfTitle);
    });
  }

  @override
  Widget build(BuildContext context) {
    // final String textOfTitle;
    const primaryColor = Color.fromARGB(255, 255, 255, 255);

    return Scaffold(
        key: myKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Text(
                      widget.textOfTitle,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: 80,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(

                          myProducts['product'+(index+1).toString()]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Color.fromARGB(255, 48, 47, 47)),
                        ),
                      ),
                      subtitle: Text(
                        myProducts['product'+(index+1).toString()]['price'].toString() +' EGP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: SizedBox(
                          height: 80.0,
                          width: 80.0,
                          child: Image.network(myProducts['product'+(index+1).toString()]['imgSrc'])),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 100, 100, 100))),
                              margin: EdgeInsets.only(left: 10),
                              child: IconButton(
                                  onPressed: () {
                                    counter++;
                                    myKey.currentState?.showSnackBar(
                                      SnackBar(
                                        backgroundColor: Colors.blue,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        content: Row(children: <Widget>[
                                          Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "   $counter item added",
                                          ),
                                        ]),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.add))),
                        ],
                      ),
                    ),
                    decoration: new BoxDecoration(
                        //
                        border: new Border(
                      bottom: new BorderSide(
                        color: Color.fromARGB(255, 190, 189, 189),
                      ),
                    ))),
              );
            },
          ),
        ));
  }
}

Future<void> getCurrentOnLineUserInfo(myData,  textOfTitle) async {
  print('len : ${textOfTitle}');
DatabaseReference reference =
FirebaseDatabase.instance.ref().child("products").child(textOfTitle);
final snapshot = await reference.get(); // you should use await on async methods
if (snapshot.value != null) {
  myData.clear();
  var values= await snapshot.value;
  myData=await values;
  print('Data : ${myData['product1']['title']}');
  // print('len : ${myTitle}');
  myProducts=await myData;
}
}


//text field


// Container(child: TextField())

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 40,
              //     margin: EdgeInsets.only(bottom: 10),
              //     decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(5)),
              //     child: Center(
              //       child: TextField(
              //         keyboardType: TextInputType.multiline,
              //         //  maxLines: null,
              //         controller: myController,
              //         decoration: InputDecoration(
              //           prefixIcon: Icon(Icons.search),
              //           suffixIcon: IconButton(
              //               onPressed: myController.clear,
              //               icon: Icon(Icons.clear)),
              //           hintText: 'Search...',
              //           border: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                   color: Color.fromARGB(255, 104, 104, 104))),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),