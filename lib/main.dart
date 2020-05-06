import 'package:flutter/material.dart';
import 'package:testing/constants.dart';
import 'package:testing/screens/home_screen.dart';
import 'package:testing/screens/login1_screen.dart';
import 'package:testing/screens/login2_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoronaVirusApp',
      theme: ThemeData(
        primaryColor: kGreyish,
        accentColor: kLightBlue,
        scaffoldBackgroundColor: kDarkBlue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Login1Screen.id: (context) => Login1Screen(),
//        Login2Screen.id: (context) => Login2Screen(),
    },
    );
  }
}

