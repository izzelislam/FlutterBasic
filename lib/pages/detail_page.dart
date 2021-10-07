import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/error_page.dart';
import 'package:flutter_basic/theme.dart';
import 'package:flutter_basic/widgets/main_facilities.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    launchUrl(String url) async{
      if(await canLaunch(url)){
        launch(url);
      } else{
        Route route = MaterialPageRoute(builder: (context) => ErrorPage());
        return Navigator.push(context, route);
      }
    }
    
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnile.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical  : 30
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/button_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/button_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20)
                    ),
                    color: whiteColor
                  ),

                  // title
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text.rich(TextSpan(
                                  text: '\$24',
                                  style: purpleTextStyle.copyWith(
                                    fontSize: 16
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' / month',
                                      style: grayTextStyle.copyWith(fontSize: 16)
                                    )
                                  ]
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/start.png',
                                  width: 20,
                                  height: 20,
                                ),
                                Image.asset(
                                  'assets/start.png',
                                  width: 20,
                                  height: 20,
                                ),
                                Image.asset(
                                  'assets/start.png',
                                  width: 20,
                                  height: 20,
                                ),
                                Image.asset(
                                  'assets/start.png',
                                  width: 20,
                                  height: 20,
                                ),
                                Image.asset(
                                  'assets/start.png',
                                  width: 20,
                                  height: 20,
                                  color: Color(0xff989BA1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 18,),

                      // title main facilities
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Main Facilities',
                          style: blackTextStyle.copyWith(
                            fontSize: 16
                          ),
                        ),
                      ),
                      SizedBox(height: 12),

                      // Icon main facilities
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MainFacilities(
                              imageurl: 'assets/icon_kitchen.png',
                              available: 2,
                              name: ' kitchen',
                            ),
                            MainFacilities(
                              imageurl: 'assets/icon_bedroom.png',
                              available: 4,
                              name: ' bedroom',
                            ),
                            MainFacilities(
                              imageurl: 'assets/icon_lemari.png',
                              available: 2,
                              name: ' big lemari',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),

                      // title photos
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Photos',
                          style: blackTextStyle.copyWith(
                            fontSize: 16
                          ),
                        ),
                      ),
                      SizedBox(height: 12),

                      // photos item
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                           SizedBox(width: edge),
                           ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Container(
                               width: 110,
                               height: 88,
                               child: Image.asset(
                                 'assets/room_1.png',
                                 fit: BoxFit.cover,
                               ),
                             )
                           ),
                           SizedBox(width: 18,),
                           ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Container(
                               width: 110,
                               height: 88,
                               child: Image.asset(
                                 'assets/room_2.png',
                                 fit: BoxFit.cover,
                               ),
                             )
                           ),
                           SizedBox(width: 18,),
                           ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Container(
                               width: 110,
                               height: 88,
                               child: Image.asset(
                                 'assets/room_3.png',
                                 fit: BoxFit.cover,
                               ),
                             )
                           ),
                           SizedBox(width: 18,),
                           ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Container(
                               width: 110,
                               height: 88,
                               child: Image.asset(
                                 'assets/room_3.png',
                                 fit: BoxFit.cover,
                               ),
                             )
                           ),
                           SizedBox(width: edge)
                          ],
                        ),
                      ),
                      SizedBox(height: 30),

                      // location title
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Location',
                          style: blackTextStyle.copyWith(fontSize: 16)
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 213,
                              height: 44,
                              child: Text(
                                'Jln. Kappan Sukses No. 20  Palembang',
                                style: grayTextStyle.copyWith(
                                  fontSize: 14
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                //launchUrl('https://www.youtube.com/watch?v=rZBEvtl4bEk&t=2094s');
                                launchUrl('url');
                              },
                              child: Icon(
                                Icons.location_city,
                                color: grayColor,
                                size: 22,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      
                      // button
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: RaisedButton(
                          onPressed: (){
                            launchUrl('tel:+6285293115969');
                          },
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)
                          ),
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: edge,),
                    ],
                  ),
                )  
              ],
            )
          ],
        )
      ),
    );
  }
}