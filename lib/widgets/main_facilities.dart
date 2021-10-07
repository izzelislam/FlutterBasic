import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class MainFacilities extends StatelessWidget {
  final String imageurl;
  final int    available;
  final String name;

  MainFacilities({this.imageurl= '', this.available= 0, this.name= ''});
  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        this.imageurl,
        height: 32,
        width: 32,
      ),
      SizedBox(height: 8),
      Text.rich(TextSpan(
        text: '${this.available}',
        style: purpleTextStyle.copyWith(
          fontSize: 14
        ),
        children: [
          TextSpan(
            text: this.name,
            style: grayTextStyle.copyWith(
              fontSize: 14
            )
          )
        ]
      ))
    ],
  );
  }
}