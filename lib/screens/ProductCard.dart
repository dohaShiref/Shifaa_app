import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String title;
  const ProductCard({Key? key, required this.title}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<ProductCard> createState() => Productclass();
}

class Productclass extends State<ProductCard> {
  void _incrementCounter() {
    setState(() {
      if (counter >= 0) {
        counter++;
      }
    });
  }

  void decreaseCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  Icon customIcon = const Icon(Icons.search);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final List<String> srcimages = [
    "assests/bebelac1.png",
    "assests/bebelac2.jpg",
    "assests/nanmilk.jpg",
  ];
  final List<String> titles = [
    "Bebelac 1 Milk Powder 400 gms",
    "Bebelac 2 Milk Powder 500 gms",
    "Nan Comfort Milk Powder 380 gms",
  ];
  final List<String> price = [
    "EGP 75",
    "EGP 115",
    "EGP 130",
  ];
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    // final String textOfTitle;
    const primaryColor = Color.fromARGB(255, 255, 255, 255);

    return Scaffold(
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
                      "Order List",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
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
            itemCount: titles.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: 100,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          titles[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Color.fromARGB(255, 48, 47, 47)),
                        ),
                      ),
                      subtitle: Text(
                        price[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: SizedBox(
                          height: 80.0,
                          width: 80.0,
                          child: Image.asset(srcimages[index])),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                  )),
                              margin: EdgeInsets.only(left: 10),
                              child: IconButton(
                                onPressed: () {
                                  // counter--;
                                  // print(counter);
                                  decreaseCounter();
                                },
                                icon: Icon(Icons.remove),
                                color: Colors.red,
                              )),
                          SizedBox(width: 7),
                          Text(
                            '$counter',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 7),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green)),
                              margin: EdgeInsets.only(left: 0),
                              child: IconButton(
                                onPressed: () {
                                  // counter++;
                                  // print(counter);
                                  _incrementCounter();
                                },
                                icon: Icon(Icons.add),
                                color: Colors.green,
                              )),
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
