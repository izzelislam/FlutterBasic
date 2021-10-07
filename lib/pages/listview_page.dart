import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {

   final List<Color> myColor = [Colors.red, Colors.blue, Colors.green, Colors.yellow];
   final List<double> tinggi = [1, 2, 3, 4];
   final List<Widget> nom = List.generate(100, (index) => Text(index.toString()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('latihan list view'),),
      body: ListView.separated(
        separatorBuilder: (contex, index){
          return Container(
            height: 100,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index){
          return Container(
            height: tinggi[index] * 100,
            width: 100,
            color: myColor[index],
          );
        },
      )
    );
  }
}