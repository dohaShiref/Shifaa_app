import 'package:flutter/material.dart';
import 'package:iti_gp/model/user.dart';
import 'package:iti_gp/model/user.dart';

class UserDetailScreen extends StatefulWidget {
  Post data;
  UserDetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  _UserDetailScreenState createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.data.id}"),
      ),
      body: ListView(children: [
        Text("ID: ${widget.data.id}"),
        Text("userId: ${widget.data.userId}"),
        Text("body: ${widget.data.body}"),
        Text("HashCode: ${widget.data.hashCode}"),
      ]),
    );
  }
}
