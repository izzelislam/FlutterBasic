import 'package:flutter/material.dart';
import 'package:flutter_basic/models/city.dart';
import 'package:flutter_basic/models/space.dart';
import 'package:flutter_basic/models/tips.dart';
import 'package:flutter_basic/theme.dart';
import 'package:flutter_basic/widgets/bottom_navbar_item.dart';
import 'package:flutter_basic/widgets/city_card.dart';
import 'package:flutter_basic/widgets/space_card.dart';
import 'package:flutter_basic/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          // tiitle page 
          children: [
            SizedBox(height: edge),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Explore Now', style: blackTextStyle.copyWith(
                fontSize: 24
              ),),
            ),
            SizedBox(height: 2,),
            Padding(padding: EdgeInsets.only(left: edge),
              child: Text('Mencari kosan yang cozy', style: grayTextStyle.copyWith(fontSize: 18)),
            ),
            SizedBox(height: 30),
            // popular cities
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Popular Cities', style: regularTextStyle.copyWith(fontSize: 16))
            ),    
            SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: edge),
                  CityCard(
                    City(
                      id: 1,
                      name: 'jakarta',
                      imageUrl: 'assets/city_1.png'
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Bandung',
                      imageUrl: 'assets/city_2.png',
                      isPopular: true
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 1,
                      name: 'jakarta',
                      imageUrl: 'assets/city_3.png'
                    ),
                  ),
                  SizedBox(width: edge)
                ],
              ),
            ),
            SizedBox(height: 30,),
            //recomended space
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Recommended Space', style: regularTextStyle.copyWith(
                fontSize: 16
              ),),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: EdgeInsets.only(
                left: 20
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id : 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/room_1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Indonesia',
                      rating: 4
                    )
                  ),
                  SizedBox(height: 30,),
                  SpaceCard(
                    Space(
                      id : 1,
                      name: 'Darrling How',
                      imageUrl: 'assets/room_2.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Indonesia',
                      rating: 4
                    )
                  ),
                  SizedBox(height: 30,),
                  SpaceCard(
                    Space(
                      id : 1,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/room_3.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Indonesia',
                      rating: 4
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // tips and guidance
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Tips & Guidance', style: regularTextStyle.copyWith(
                fontSize: 16
              ),),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id :1,
                      name: 'City Guidelines',
                      date: 'Updated 20 Apr',
                      imageUrl: 'assets/tips_1.png'
                    )
                  ),
                  SizedBox(height: 20,),
                  TipsCard(
                    Tips(
                      id :2,
                      name: 'Jakarta Fairship',
                      date: 'Updated 20 Apr',
                      imageUrl: 'assets/tips_2.png'
                    )
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),

            // Bootm navigator
            SizedBox(height: 50 + edge),
          ],
        )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageurl: 'assets/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageurl: 'assets/Icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageurl: 'assets/Icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageurl: 'assets/Icon_heart.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}