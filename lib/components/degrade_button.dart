import 'package:flutter/material.dart';
import 'package:testing/constants.dart';

class DegradeButton extends StatelessWidget {
  DegradeButton({this.titleOfButton, @required this.onPressed});

  final String titleOfButton;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){},
        textColor: Colors.white,
        color: kDarkBlue,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              kRoyalBlue,
              kMediumBlue,
              kBahamasBlue,
            ],
          ),
          borderRadius: BorderRadius.circular(25.0)
        ),
        padding: EdgeInsets.all(15.0),
        child: Text(titleOfButton, style: TextStyle(fontSize: 20.0),),
      )
    );
  }
}
