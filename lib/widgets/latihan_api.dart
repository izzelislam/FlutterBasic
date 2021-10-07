import 'package:flutter/material.dart';
import 'package:flutter_basic/models/user.dart';

class LatihanApi extends StatefulWidget {
  const LatihanApi({ Key? key }) : super(key: key);

  @override
  _LatihanApiState createState() => _LatihanApiState();
}

class _LatihanApiState extends State<LatihanApi> {

  late Future<User> user;
  @override

  void initState() {
    super.initState();
    user = User.getUser();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Api'),),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FutureBuilder<User>(
              future: User.getUser(),
              builder: (context, snapshot) {
              if (snapshot.hasData) {
                  return Text('berhasil');
                } else if (snapshot.hasError) {
                  return Text('gagal');
                }

                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
              )
          ],
        ),
      ) ,
    );
  }
}