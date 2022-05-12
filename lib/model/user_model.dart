import 'dart:convert';

class UserModel {
  String name;
  String email;
  String password;
  String phone;
  String creditNum;
  String location;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.creditNum,
    required this.location,
  });

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
    'name': name,
    'email': email,
    'password':password,
    'phone':phone,
    'creditNum':creditNum,
    'location':location,

  };


}
