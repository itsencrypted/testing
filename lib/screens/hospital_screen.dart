import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/constants.dart';
import 'package:testing/models/activity_model.dart';
import 'package:testing/models/hospital_model.dart';

class HospitalScreen extends StatefulWidget {

  final Hospital hospital;

  HospitalScreen({this.hospital});

  @override
  _HospitalScreenState createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> {

  Text _buildRatingStars(int rating){
    String stars = '';
    for (int i=0; i < rating; i++){
      stars += '⭐ ';
      stars.trim();
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0.0, 2.0,), blurRadius: 6.0,),]),
              child: Hero(
                tag: widget.hospital.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(image: AssetImage(widget.hospital.imageUrl),
                  fit: BoxFit.cover,),),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back, color: kDarkBlue,size: 30.0), onPressed: () => Navigator.pop(context),),
                Row(children: <Widget>[
                  IconButton(icon: Icon(Icons.search, color: kDarkBlue,size: 30.0), onPressed: () => Navigator.pop(context),),
                  IconButton(icon: Icon(Icons.filter_list, color: kDarkBlue,size: 30.0), onPressed: () => Navigator.pop(context),),
                ],)
              ],),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.hospital.city, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.white,),),
                  Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.locationArrow, size: 15.0, color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text('Centro', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.white),),
                    ],
                  ),
                ],),
            ),
            Positioned(
              right: 20.0,
              bottom: 20.0,
              child: Icon(Icons.location_on, color: Colors.white, size: 25.0),
            )
          ],),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
            itemCount: widget.hospital.activities.length,
            itemBuilder: (BuildContext context, int index){
              Activity activity = widget.hospital.activities[index];
              return Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(20),),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 20, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Container(width: 120,
                              child: Text(activity.name, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),maxLines: 2, overflow: TextOverflow.ellipsis,)
                          ),
                          Column(
                            children: <Widget>[
                              Text('\$${activity.price}', style: TextStyle(fontWeight: FontWeight.w600),),
                              Text('per pax', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black45),),
                            ],
                          ),
                        ],),
                        Text(activity.type, style: TextStyle(color: Colors.black45),),
                      _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0,),
                        Row(children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5.0),
                            width: 75.0,
                            decoration: BoxDecoration(
                                color: kGreyish,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text(activity.startTimes[0], textAlign: TextAlign.center,),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            width: 75.0,
                            decoration: BoxDecoration(
                                color: kGreyish,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text(activity.startTimes[1], textAlign: TextAlign.center,),),
                        ],)
                      ],),
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 15.0,
                    bottom: 15.0,
                    child: ClipRRect(borderRadius: BorderRadius.circular(20.0),
                    child: Image(width: 110.0, image: AssetImage(activity.imageUrl),
                    fit: BoxFit.cover,),),
                  )
                ],
              );
              },
            ),
          ),
        ],
      ),
    );
  }
}
