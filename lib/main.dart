import 'package:flutter/material.dart';
import 'screens/user_profile/login_screen.dart';
import 'screens/home_screen.dart';

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
    // bringVagetable(thaila: true, rupees: 50);
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        // brightness: Brightness.dark
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginScreen()
      },
    );
  }

  // bringVagetable({@required bool thaila , int rupees = 100}) {}
}
