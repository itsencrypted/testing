import 'package:flutter/material.dart';
import 'package:testing/constants.dart';
import 'package:testing/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoronaVirus App',
      theme: ThemeData(
        primaryColor: kGreyish,
        accentColor: kLightBlue,
        scaffoldBackgroundColor: kDarkBlue,
      ),
      home: HomeScreen()
    );
  }
}
