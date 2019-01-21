import 'package:flutter/material.dart';
import 'package:rachman_notes/View/Fragment/About.dart';
import 'package:rachman_notes/View/Fragment/Home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        primaryColor: Colors.amber.shade500,
        accentColor: Colors.blueGrey.shade500,
        primaryTextTheme: TextTheme(
					headline: TextStyle(
						color: Colors.white
					),
				),
      ),
      routes: routesNavigation,
    );
  }
}

final routesNavigation = <String, WidgetBuilder>{
  'Home' : (BuildContext context) => Home(),
  'About' : (BuildContext context) => About(),
};