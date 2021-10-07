import 'package:flutter/material.dart';
import 'package:flutter_basic/models/tips.dart';
import 'package:flutter_basic/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          child: Image.asset('${tips.imageUrl}', fit: BoxFit.cover,),
        ),
        SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${tips.name}',
              style: blackTextStyle.copyWith(
                fontSize: 18
              ),
            ),
            SizedBox(height: 4),
            Text(
              '${tips.date}',
              style: grayTextStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.chevron_right,
            color: grayColor
          )
        )
      ],
    );
  }
}