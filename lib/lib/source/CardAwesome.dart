import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          height: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              colors: [
                Colors.yellow[700],
                Colors.redAccent
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage('https://wallpapercave.com/wp/wp2365076.jpg')
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'New York',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Sunny',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white70
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '2342',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white
                              )
                            ),
                            Text(
                              'Popularity',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '2342',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white
                              )
                            ),
                            Text(
                              'Popularity',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '2342',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white
                              )
                            ),
                            Text(
                              'Popularity',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '12°',
                      style: TextStyle(fontSize: 30.0, color: Colors.white70),
                    ),
                    Text(
                      'Ranking',
                      style: TextStyle(fontSize: 14.0, color: Colors.white70),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}