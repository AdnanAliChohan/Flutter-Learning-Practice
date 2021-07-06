import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  int days = 30;
  bool male = true;
  // num temperature = 38.5;
  num temperature = 38;
  var anyValueType = 30; //"King" 30.6
  // const pi = 3.14;
  // final  same like const but its value will change in future

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
