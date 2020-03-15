import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//statefulWidget combination of two class more complex in future used
//stateless is simple
class MyApp extends StatefulWidget {
  //createState + enter
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // static const questions =[
     // const questions =[
        final questions =const [
      { 
        'questionText': 'What\'s is your favorite colour?',
        'answers': ['Red', 'Green', 'Yellow', 'Orange'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['lion', 'Monkey', 'elephant', 'deer'],
      },
      {
        'questionText': 'What\'s your favorite peronality?',
        'answers': [
          'Quaid-e-azam',
          'Allama iqbal',
          'Sir syed ahmed khan',
          'Z.ali.bhutto'
        ],
      },
    ];
  var _questionIndex = 0;
  
  void _answerQuestion() {
  //   var aBool=true;
  //  aBool=false;
  if(_questionIndex < questions.length){
    print('We have more questions!');
  }



    setState(() {
      //setState is a function that force re render user interface
      _questionIndex = _questionIndex + 1;
    });
    // questionIndex = questionIndex + 1;
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //{} map
    //Map <>
    // var questions = [
    // final questions = [
    // const questions = const [
      //const questions =  [
    //     const questions =[
    //   { 
    //     'questionText': 'What\'s is your favorite colour?',
    //     'answers': ['Red', 'Green', 'Yellow', 'Orange'],
    //   },
    //   {
    //     'questionText': 'What\'s your favorite animal?',
    //     'answers': ['lion', 'Monkey', 'elephant', 'deer'],
    //   },
    //   {
    //     'questionText': 'What\'s your favorite peronality?',
    //     'answers': [
    //       'Quaid-e-azam',
    //       'Allama iqbal',
    //       'Sir syed ahmed khan',
    //       'Z.ali.bhutto'
    //     ],
    //   },
    // ];
// var dummy=const ['Hello']; //compile time const
// var dummy=['Hello'];  //modify original list and object
// dummy.add('Quaid-e-azam');
// print(dummy);
// dummy=[];

    //questions=[];  if does not work if question is const 
    //new object in a memory
    //  @override
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        //  body: Text('This is my text'),
        body: Column(
          children:
              //  <Widget>[
              [
            // Text(questions.elementAt(0),),
            // Text(
            Question(
              // questions[_questionIndex],
              questions[_questionIndex]['questionText'],
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
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              //mapping a multiple list of widget
              return Answer(_answerQuestion, answer);
            }).toList() //add nested list
          ],
        ),
        //Ctrl+Space
      ),
    );
  }
}
