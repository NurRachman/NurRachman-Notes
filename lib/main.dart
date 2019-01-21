import 'package:flutter/material.dart';
import 'package:rachman_notes/View/Main.dart';
import 'Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito'
      ),
      home : Main(title: 'NurRachman Notes'),
      routes: routes,
      initialRoute: 'login',
    );
  }
}