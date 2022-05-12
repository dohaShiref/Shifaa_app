import 'package:dio/dio.dart';
import 'package:iti_gp/model/user.dart';
import 'package:iti_gp/model/user.dart';

class UserService {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String postUrl = "posts";

  Future<List<Post>> getUser() async {
    List<Post> usersList = [];
    try {
      Response response = await Dio().get("$baseUrl$postUrl");
      response.data.forEach((element) {
        Post user = Post.fromJson(element);
        usersList.add(user);
      });
    } catch (e) {
      print("${e.toString()}");
    }
    return usersList;
  }
}
