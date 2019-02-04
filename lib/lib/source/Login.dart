import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login>{

  final titleLogin = Text(
    'NurRachman POS',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 29,
      fontWeight: FontWeight.bold,
    ),
  );

  final subTitleLogin = Text(
    'Login Back Anytime',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 19,
    ),
  );

  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    initialValue: "MuhammadNurRachman@gmail.com",
    style: TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.lightBlueAccent,
          width: 3.0
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 2.0
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      hintText: 'Email',
      hintStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(),
      labelText: 'Email',
      labelStyle: TextStyle(
        color : Colors.white,
      )
    ),
  );

  final password = TextFormField(
    keyboardType: TextInputType.text,
    autofocus: false,
    initialValue: "Ghea Indrawawi",
    obscureText: true,
    style: TextStyle(
      color: Colors.white
    ),
    decoration: InputDecoration(
      hintText: 'Password',
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.lightBlueAccent,
          width: 3.0
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 2.0
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      hintStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(),
      labelText: 'Password',
      labelStyle: TextStyle(color : Colors.white)
    ),
  );

  final loginButton = Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: MaterialButton(
      elevation: 2,
      splashColor: Colors.white,
      minWidth: double.infinity,
      height: 42.0,
      onPressed: (){},
      color: Colors.lightBlueAccent,
      child: Text(
        'Log In',
        style : TextStyle(
          color : Colors.white,
          fontSize: 18,
        ),
      ),
    ),
  );

  final forgotButton = Text(
    'Forgot Password ?',
    textAlign: TextAlign.start,
    style: TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/bg_login.jpg'),
            repeat: ImageRepeat.repeat,
            colorFilter: ColorFilter.mode(Colors.black45,BlendMode.colorBurn)
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                titleLogin,
                subTitleLogin,
                SizedBox(height: 38),
                email,
                SizedBox(height: 16),
                password,
                loginButton,
                forgotButton,
              ],
            ),
          )
        ),
      ),
    );
  }
}