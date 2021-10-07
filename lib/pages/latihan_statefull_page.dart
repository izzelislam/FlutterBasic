import 'package:flutter/material.dart';

class LatihanStateFull extends StatefulWidget {
  const LatihanStateFull({ Key? key }) : super(key: key);

  @override
  _LatihanStateFullState createState() => _LatihanStateFullState();
}

class _LatihanStateFullState extends State<LatihanStateFull> {

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('counter'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${this.counter}', style: TextStyle(
            fontSize: double.parse(counter.toString())
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    counter--;
                  });
                },
                child: Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    counter++;
                  });
                },
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}