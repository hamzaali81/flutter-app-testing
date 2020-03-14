import 'package:flutter/material.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      //setState is a function that force re render user interface 
    _questionIndex = _questionIndex + 1;

    });
    // questionIndex = questionIndex + 1;
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favorite colour?',
      'What\'s your favorite animal?'
    ];
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
            Text(
              questions[_questionIndex],
            ),

            // RaisedButton(child: Text('Answer 1'),onPressed: _answerQuestion,),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),

            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 choosen!')),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...
                print('Answer 3 choosen!');
              },
            ),
          ],
        ),
        //Ctrl+Space
      ),
    );
  }
}
