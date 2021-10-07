import 'package:flutter/material.dart';
import 'package:flutter_basic/models/http_provider.dart';
import 'package:flutter_basic/pages/hoe_get_statefull.dart';
import 'package:flutter_basic/pages/home_proveider.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_basic/pages/GridView_page.dart';
// import 'package:flutter_basic/pages/home_statefull.dart';
// import 'package:flutter_basic/pages/TextField_page.dart';
// import 'package:flutter_basic/pages/belajar_mapping.dart';
// import 'package:flutter_basic/pages/dateformat.dart';
// import 'package:flutter_basic/pages/latihan_statefull_page.dart';
// import 'package:flutter_basic/pages/list_tile_page.dart';
// import 'package:flutter_basic/pages/splash_page.dart';
// import 'package:flutter_basic/widgets/latihan_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomeGetStateful(),
    );

    // provider
    // return MaterialApp(
    //   home: ChangeNotifierProvider(
    //     create: (context) => HttpProvider(),
    //     child: HomeProvider(),
    //   ),
    // );

  }
}