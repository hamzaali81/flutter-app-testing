import 'package:flutter/material.dart';
// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
 Widget build(BuildContext context){
  //  @override
       return MaterialApp(home: Scaffold(
         appBar: AppBar(title: Text('My first App'),
         ),
         body: Text('This is my text'),
                                        //Ctrl+Space
       ),
       );

  }
}