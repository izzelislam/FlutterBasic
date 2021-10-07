import 'dart:math';

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {

  final List<Container> myList = List.generate(90, (index) {
   return Container(
     color: Color.fromARGB(
       255, 
       Random().nextInt(255), 
       Random().nextInt(255), 
       Random().nextInt(255)
       )
   );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3/4,
          ),
          children: myList,
        )
          // child: GridView.count(
          //   padding: EdgeInsets.all(10),
          //   crossAxisCount: 2,
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          //   children: myList,
          // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chevron_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}