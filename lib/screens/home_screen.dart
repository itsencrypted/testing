import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/components/hotel_carousel.dart';
import 'package:testing/constants.dart';
import 'package:testing/components/hospital_carousel.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

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
              children: _icons.asMap().entries.map((MapEntry map) => _buildIcon(map.key),).toList(),
            ),
            SizedBox(height: 20.0,),
            HospitalCarousel(),
            SizedBox(height: 10.0,),
            HotelCarousel(),
              ],
            ),
          ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
      onTap: (int value){
            setState(() {
              _currentTab = value;
            });
      },
      backgroundColor: kDarkBlue,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.search, size: 30, color: _currentTab == 0 ? Theme.of(context).accentColor : Colors.white54,), title: SizedBox.shrink()),
        BottomNavigationBarItem(icon: Icon(Icons.local_hospital, size: 30, color: _currentTab == 1 ? Theme.of(context).accentColor : Colors.white54, ), title: SizedBox.shrink()),
        BottomNavigationBarItem(icon: Icon(Icons.menu, size: 30, color: _currentTab == 2 ? Theme.of(context).accentColor : Colors.white54,), title: SizedBox.shrink()),
      ]),
      );
  }
}











//
//Some never used buttons:
//

//import 'package:testing/screens/login1_screen.dart';
//import 'package:testing/screens/login2_screen.dart';
//import 'package:testing/components/little_black_button.dart';
//import 'package:testing/components/rounded_button.dart';
//import 'package:testing/components/dharma_button.dart';


//LittleBlackButton(titleOfButton: 'Go to Login1 Screen',onPressed: (){Navigator.pushNamed(context, Login1Screen.id);},),
//SizedBox(height: 10.0,),
//DharmaButton(titleOfButton: 'Sign in with Ethereum', onPressed: (){print('degrade was pressed');},),
//SizedBox(height: 10.0,),
//RoundedButton(titleOfButton: 'Go to Login3 Screen',onPressed: (){print('button was pressed');}, colorOfButton: kGreyish,)