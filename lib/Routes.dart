import 'package:flutter/material.dart';
import 'package:rachman_notes/View/Detail.dart';
import 'package:rachman_notes/View/Login.dart';

final routes = <String, WidgetBuilder>{
    '/login' : (context) => Login(),
    '/detail' : (context) => Detail(),
  };