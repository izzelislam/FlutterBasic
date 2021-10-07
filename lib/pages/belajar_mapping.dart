import 'package:flutter/material.dart';

class LatihanMapping extends StatelessWidget {

  final List<Map<String, dynamic>> myList = [
    {
      'nama' : 'Budi santoso',
      'umur' : 21,
      'favcolor': ['merah', 'kuning', 'hijau','merah', 'kuning', 'hijau']
    },
    {
      'nama' : 'Joko santoso',
      'umur' : 22,
      'favcolor': ['merah', 'kuning', 'hijau']
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map')),
      body: ListView(
        children: myList.map((data) {
          List fav = data['favcolor'];
          return  Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.black.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nama : ${data['nama']}'),
                        Text('Umur : ${data['umur']} tahun'),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: fav.map((favcol) {
                      return Container(
                        color: Colors.amber,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('${favcol}'),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          );

        }).toList(),
      ),
    );
  }
}