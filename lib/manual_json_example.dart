import 'dart:convert';

import 'package:flutter_json_example/generator/user.dart';

// import 'package:flutter_json_example/user.dart';

void main() {
  String jsonString = '''
    {
      "name" : "Andri Suryono",
      "email" : "andri.suryono@gmail.com",
      "age" : 28
    }
  ''';

  Map<String, dynamic> user = jsonDecode(jsonString);
  final userObj = User.fromMap(user);

  print('name : ${user['name']}');
  print('Age : ${user['age']}');

  print('name : ${userObj.name}');
  print('email : ${userObj.email}');
  print('age : ${userObj.age}');

  print(user);

  String userString = jsonEncode(user);
  print(userString);
}
