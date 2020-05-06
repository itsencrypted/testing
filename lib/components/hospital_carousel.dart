import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/constants.dart';
import 'package:testing/models/hospital_model.dart';
import 'package:testing/screens/hospital_screen.dart';

class HospitalCarousel extends StatelessWidget {
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
        color: Colors.lightBlueAccent,
        child: ListView.builder(
         scrollDirection: Axis.horizontal,
          itemCount: hospitals.length,
          itemBuilder: (BuildContext context, int index) {
           Hospital hospital = hospitals[index];
//           Destination destination = destinations[index];
           return GestureDetector(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HospitalScreen(hospital: hospital,),),),
             child: Container(
               margin: EdgeInsets.all(10.0),
               width: 210,
               child: Stack(
                 alignment: Alignment.topCenter,
                 children: <Widget>[
                 Positioned(bottom: 15.0,
                   child: Container(
                     height: 120.0,
                     width: 200.0,
                     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                         Text('${hospital.availableBeds} available beds', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 0.5, color: kDarkBlue),),
                           SizedBox(height: 2.0),
                         Text(hospital.name,  style: TextStyle(color: Colors.grey),),
                           SizedBox(height: 2.0),
                       ],),
                     ),
                   ),
                 ),
                 Container(decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20.0),
                     boxShadow: [BoxShadow(
                       color: Colors.black26,
                       offset: Offset(0.0, 2.0),
                       blurRadius: 6.0,
                     )]
                 ),
                 child: Stack(
                   children: <Widget>[
                     Hero(
                       tag: hospital.imageUrl,
                       child: ClipRRect(borderRadius: BorderRadius.circular(20.0),
                           child: Image(height: 180.0, width: 180.0, image: AssetImage(hospital.imageUrl), fit: BoxFit.cover)),
                     ),
                     Positioned(
                       left: 10.0,
                       bottom: 10.0,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                         Text(hospital.city, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white,),),
                         Row(
                           children: <Widget>[
                             Icon(FontAwesomeIcons.locationArrow, size: 10.0, color: Colors.white,),
                             SizedBox(width: 5.0,),
                             Text('Centro', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),),
                           ],
                         ),
                       ],),
                     )
                   ],
                 ),)
               ],),
             ),
           );
          }

         ),
        ),
      ],
    );
  }
}


//// ignore: unnecessary_statements
//itemBuilder: (BuildContext context, int index){4;
//return Container(
//margin: EdgeInsets.all(10.0),
//width: 210,
//color: kGreyish,
//child: Stack(children: <Widget>[
//Container(
//height: 120.0,
//width: 200.0,
//decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)
//),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text('8 beds available'),
//Text('This hospital is considered the best cardiology center in Latin America'),
//],),
//)
//],
//)
//);
//}