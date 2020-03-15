import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;

  Result(this.resultScore, this.resultHandler);
  //getters mixture of property and method
  String get resultPhrase {
    // var resultText='You do it!';
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are pentual';
    } else if (resultScore <= 16) {
      resultText = 'You are may intelligent';
    } else if (resultScore < 20) {
      resultText = 'You are genuis';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //
      child: Column(
        children: <Widget>[
          // 'You did it!',
          // resultPhrase,
          // style: TextStyle(
          //   fontSize: 36,
          //   fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.center,
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resultHandler,
            textColor: Colors.blue,
            child: Text(
              'Restart Quiz',
            ),
          )
        ],
      ),
    );
  }
}
