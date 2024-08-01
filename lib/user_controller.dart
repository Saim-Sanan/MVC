import 'dart:convert';

import 'package:mvc/user.dart';
import 'package:http/http.dart' as http;

class UserController {
  late User user;
  Future<void> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);

      user = User.fromJson(body);
      // return user;
    } else {
      print("error");
      // return null;
    }
  }
}
