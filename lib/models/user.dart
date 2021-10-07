import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String title;

  User({
   required this.title
  });

  factory User.fromJson(Map <String, dynamic> object)
  {
    return User(
    title : object['title'],
    );
  }

  static Future <User> getUser() async
  {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    
    if( response.statusCode == 200){
      return User.fromJson(json.decode(response.body));
    } else{
      throw Exception('gagal ambil user');
    }
  }

}