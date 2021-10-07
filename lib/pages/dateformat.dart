import 'package:flutter/material.dart';

class DateFormat extends StatelessWidget {
  const DateFormat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date format'),),
      body: Center(
        child: Text(
          'Tanggal',
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
    );
  }
}