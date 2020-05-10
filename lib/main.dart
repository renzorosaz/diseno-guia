import 'package:disenos/src/pages/pagesudemy/basico_page.dart';
import 'package:disenos/src/pages/pagesudemy/botones_page.dart';
import 'package:disenos/src/pages/pagesudemy/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' :  (BuildContext context) => ScrollPage(),
        'botones' :  (BuildContext context) => BotonesPage(),
      },
    );
  }
}