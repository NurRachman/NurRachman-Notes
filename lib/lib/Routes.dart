import 'package:flutter/material.dart';
import 'source/Login.dart';
import 'source/Repository.dart';

final routes = <String, WidgetBuilder>{
  '/' : (context) => Login(),
  '/Repos' : (context) => Repository(),
};