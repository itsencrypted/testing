import 'package:flutter/material.dart';
import 'package:testing/constants.dart';

class DharmaButton extends StatelessWidget {
  DharmaButton({this.titleOfButton, @required this.onPressed});

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
                  kDharma1,
                  kDharma2,
                  kDharma3,
                  kDharma4,
                  kDharma5,
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