import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class ErrorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/error_404.png',
              width: 300,
            ),
            SizedBox(height: 71,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 42),
              child: Column(
                children: [
                  Text(
                    'Where are you going?',
                    style: blackTextStyle.copyWith(
                      fontSize: 24
                    ),
                  ),
                  SizedBox(height: 14,),
                  Text(
                    'Seems like the page that you were requested is already gone',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 60,),
                  Container(
                    height: 50,
                    width: 210,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      color: purpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)
                      ),
                      child: Text(
                        'Back to home',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16
                        ),
                      ),
                    ),
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}