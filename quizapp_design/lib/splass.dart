import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:quizapp_design/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),

      ));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,

      body: new Stack(
        children: <Widget>[
          new Container(

            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("images/quiz.jpg"), fit: BoxFit.cover,),
            ),
          ),
        ]
      ),
    );
  }
}
