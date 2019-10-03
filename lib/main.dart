import 'package:flutter/material.dart';

import 'package:manzu_app/src/pages/activity_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manzu APP',
      home: ActivityPage()
    );
  }
}