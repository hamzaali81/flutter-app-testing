import 'package:flutter/material.dart';
// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  void answerQuestion(){
    print('Answer question!');
  }
  @override
 Widget build(BuildContext context){
   var questions=[
     'What\'s is your favorite colour?',
      'What\'s your favorite animal?'
   ];
  //  @override
       return MaterialApp(home: Scaffold(
         appBar: AppBar(title: Text('My first App'),
         ),
        //  body: Text('This is my text'),
        body: Column(
          children:
          //  <Widget>[
          [
            Text('The question'),
            RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 2'),onPressed: ()=> print('Answer 2 choosen!')),
            RaisedButton(child: Text('Answer 3'),onPressed: (){//...
            print('Answer 3 choosen!')
            },),
           ],
           ),
                                        //Ctrl+Space
       ),
       );
}
}