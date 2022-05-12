import 'dart:html';

import 'package:flutter/material.dart';
import 'package:iti_gp/screens/userDetails.dart';

import '../model/user.dart';
import '../services/userServices.dart';

class mainpage extends StatefulWidget {
  final String phonenumber;
  final String password;
  mainpage({Key? key, required this.phonenumber, required this.password})
      : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<mainpage> {
  List<Post> users = [];
  bool isLoading = true;

  getMyUserList() async {
    users = await UserService().getUser();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getMyUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserDetailScreen(
                                data: users[index],
                              )),
                    );
                  },
                  title: Text("${users[index].title}"),
                  trailing: const Icon(Icons.person),
                );
              },
            ),
    );
  }
}
