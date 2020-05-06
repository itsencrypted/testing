import 'package:testing/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.titleOfButton, this.colorOfButton, @required this.onPressed});

  final Color colorOfButton;
  final String titleOfButton;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
            color: colorOfButton,
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                  onPressed: onPressed,
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    titleOfButton,
                    style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
                  )),
            ));
  }
}
