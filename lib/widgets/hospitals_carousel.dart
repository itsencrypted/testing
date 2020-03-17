import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/constants.dart';

class HospitalsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Nearby Hospitals', style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold, letterSpacing: 1.5),),
              GestureDetector(
                  onTap: () => print('see all'),
                  child: Text("See All", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 1.0),)),
            ],),
        ),
        Container(
        height: 300.0,
        color: kDarkBlue,
        child: ListView.builder(
         scrollDirection: Axis.horizontal,
          itemCount: 3,
          // ignore: unnecessary_statements
          itemBuilder: (BuildContext context, int index){3;
      return Container(
    margin: EdgeInsets.all(10.0),
    width: 210,
    color: kGreyish,
    child: Stack(children: <Widget>[
      Container(
      height: 120.0,
      width: 200.0,
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)
    ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text('8 beds available'),
          Text('This hospital is considered the best cardiology center in Latin America'),
        ],),
    )
    ],
    )
    );
         }
         ),
        ),
      ],
    );
  }
}
