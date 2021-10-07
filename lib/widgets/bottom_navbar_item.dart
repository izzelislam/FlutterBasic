import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageurl;
  final bool isActive;

  BottomNavbarItem({this.imageurl = '', this.isActive= false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          this.imageurl,
          width: 26,
        ),
        Spacer(),
        this.isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(1000)
            )
          ),
        ) : Container(),
      ],
    );
  }
}