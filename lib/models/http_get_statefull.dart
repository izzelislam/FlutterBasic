import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpGetStateful {
  String? id, fullname, email, avatar;

  HttpGetStateful({this.id, this.fullname, this.email, this.avatar});

  static Future<HttpGetStateful> connectApi(String id) async{
    Uri url = Uri.parse('https://reqres.in/api/users/' + id);

    var dataResponse = await http.get(url);

    var data = (json.decode(dataResponse.body))["data"];
    
    return HttpGetStateful(
      id: data["id"].toString(),
      fullname: data["first_name"] + " " + data["last_name"],
      email: data["email"],
      avatar: data["avatar"],
    );
  }
  
}