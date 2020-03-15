import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText); //this is positional argument
 
 //These are dart feature not flutter specific
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), //10 device margin
      child: Text(
        //widget that wrap into container
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,  //Ctrl+click check framework code
      ),
    );
  }
}
