import 'package:flutter/material.dart';
import 'package:flutter_basic/models/space.dart';
import 'package:flutter_basic/pages/detail_page.dart';
import 'package:flutter_basic/theme.dart';

class SpaceCard extends StatelessWidget {

  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Route route = MaterialPageRoute(builder: (context) => DetailPage());
        Navigator.push(context, route);
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width : 130,
              height: 110,
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 110,
                    child: Image.asset(
                      space.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                        ),
                        color: purpleColor
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/start.png',
                              width: 22,
                              height: 22
                            ),
                            Text('${space.rating}', style: whiteTextStyle.copyWith(
                              fontSize: 13
                            ),)
                          ],
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name ,
                style: blackTextStyle.copyWith(
                  fontSize: 18 
                ),
              ),
              SizedBox(height: 2,),
              Text.rich(  TextSpan(
                  text: '\$${space.price}',
                  style: purpleTextStyle.copyWith(
                    fontSize: 16
                  ),
                  children: [
                    TextSpan(
                      text: ' / month',
                      style: grayTextStyle.copyWith(
                        fontSize: 16
                      )
                    )
                  ]
                )
              ),
              SizedBox(height: 16,),
              Text(
                '${space.city}, ${space.country}',
                style: grayTextStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}