import 'package:flutter/material.dart';
import 'package:quizapp_design/splass.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quizzer",

      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: splashscreen(),
    );
  }
}