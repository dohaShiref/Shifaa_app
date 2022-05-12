import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => _MyProfileState();
}
User userData = FirebaseAuth.instance.currentUser!;
final uid = userData.uid;
DatabaseReference referenceUser =
FirebaseDatabase.instance.ref().child("users").child(uid);

class _MyProfileState extends State<MyProfile> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DatabaseEvent>(
      stream: referenceUser.onValue.asBroadcastStream(),
      builder:(BuildContext context,AsyncSnapshot<DatabaseEvent> snapshot) {
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator());
        }
        else{
          var user=snapshot.data!.snapshot.children.toList()[0].value as Map;
          return
            // ...snapshot.data!.snapshot.children.map((data){
            //   snapshot.hasData??
              SafeArea(
                  child: Column(
                    children: [
                      _getHeaderimage(),
                      SizedBox(height: 10),
                      _getName(user["name"]),
                      SizedBox(height: 15),
                      _getHeading("User Data"),
                      SizedBox(height: 6),
                      _detailsCard(user),
                      Spacer(),
                      logoutButton()
                    ],
                  ));

        }
      },
    );
  }
  Widget _getHeaderimage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 120,
            width: 120,
            child:
            Image(fit: BoxFit.fill, image: AssetImage("assests/userprofile.jpg")),
          ),
        )
      ],
    );
  }

  Widget _getName(String name) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget _getHeading(String heading) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Text(
        heading,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget _detailsCard(user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.email),
              title: Text(user["email"]),
            ),
            Divider(
              height: 0.6,
              color: Color.fromARGB(221, 122, 122, 122),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(user["password"]),
            ),
            Divider(
              height: 0.6,
              color: Color.fromARGB(221, 122, 122, 122),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(user["phone"]),
            ),
            Divider(
              height: 0.6,
              color: Color.fromARGB(221, 122, 122, 122),
            ),
            ListTile(
              leading: Icon(Icons.credit_card_outlined),
              title: Text(user["creditNum"]),
            ),
            Divider(
              height: 0.6,
              color: Color.fromARGB(221, 122, 122, 122),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(user["location"]),
            ),
          ],
        ),
      ),
    );
  }

  Widget logoutButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.logout,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text("Logout",
                  style: TextStyle(color: Colors.white, fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
