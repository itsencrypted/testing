import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/constants.dart';
import 'package:testing/widgets/hospitals_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;


  List<IconData> _icons = [
    FontAwesomeIcons.hospital,
    FontAwesomeIcons.vial,
    FontAwesomeIcons.signLanguage,
    FontAwesomeIcons.shippingFast,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index ? Theme.of(context).accentColor : Colors.white54,
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(_icons[index], size: 25.0,
            color: _selectedIndex == index ? kDarkBlue : Colors.black54)
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Text('What would you like to know?', style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),),
          ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                    (MapEntry map) => _buildIcon(map.key),
              ).toList(),
            ),
            SizedBox(height: 20.0,),
            HospitalsCarousel(),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Order Food', style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold, letterSpacing: 1.5),),
                  GestureDetector(
                      onTap: () => print('see all'),
                      child: Text("See All", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 1.0),)),
                ],),
            ),
            SizedBox(height: 20.0,),
              ],
            ),
          ),
      );
  }
}
