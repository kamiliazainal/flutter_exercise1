import 'package:exercise1/home.dart';
import 'package:exercise1/listimage.dart';
import 'package:exercise1/listpost.dart';
import 'package:exercise1/profile.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
       routes: <String, WidgetBuilder>{
        //Nama jalan dan Jalan dia
        'home': (context) => ListImage(),
        'post': (context) => ListPost(),
        'profile': (context) => Profile(),
      },
    );
  }
}