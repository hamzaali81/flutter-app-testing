import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          //  <Widget>[
          [
        // Text(questions.elementAt(0),),
        // Text(
        Question(
          // questions[_questionIndex],
          questions[questionIndex]['questionText'],
        ),
        // Answer(_answerQuestion)  ,

        // RaisedButton(child: Text('Answer 1'),onPressed: _answerQuestion,),
        //
        //
        //Answer(_answerQuestion)  ,

        // RaisedButton(
        //     child: Text('Answer 2'),
        //     onPressed: () => print('Answer 2 choosen!'))

        // Answer(_answerQuestion),
        // RaisedButton(
        //   child: Text('Answer 3'),
        //   onPressed: () {
        //     //...
        //     print('Answer 3 choosen!');
        //   },
        // ),
        // questions[_questionIndex]['answers'].map((question) {  //mapping a multiple list of widget
        //   return Answer(question);
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          //mapping a multiple list of widget
          return Answer(answerQuestion, answer);
        }).toList() //add nested list
      ],
    );
  }
}
