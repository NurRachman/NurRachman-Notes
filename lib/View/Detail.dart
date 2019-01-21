import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  static String tag = "detail-page";
  @override
  Widget build(BuildContext context) {
    
    final ghea = Hero(
      tag : 'ghea',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/ghea.jpg'),
        ),
      ),
    );

    final wellcomeText = Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Wellcome Ghea',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final loremText = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlue])
      ),
      child: Column(
        children: <Widget>[ghea, wellcomeText, loremText],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}