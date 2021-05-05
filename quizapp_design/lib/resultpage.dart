import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp_design/home.dart';
import 'package:quizapp_design/quizpage.dart';

class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key, @required this.marks}) : super(key: key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {

  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;


  @override
  void initState(){

    if(marks < 20){

      image = images[2];
      message = "You Failed from the test try again\n" +"You scored $marks marks";

    }
    else if(marks >= 20  && marks < 30){

      image = images[1];
      message = "You achieve good marks in test \n" +"You scored $marks marks";

    }
    else{

      image = images[0];
      message = "God Level Congrulatulations\n" +"You scored $marks marks";

    }
    super.initState();
  }

  int marks;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back,
      color: Colors.black,
      ),
      onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=>homepage(),)),
      ),
        title: Text(
          "Result",
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 8,
              child: Material(
                elevation: 10.0,
                child: Container(

                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/bar.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Material(
                        elevation: 5.0,
                        child: Container(
                          width: 300.0,
                          height: 300.0,
                          child: ClipRect(
                            child: Image(
                              image: AssetImage(
                                image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 15.0,
                          ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "Quando"
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/dd.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => homepage(),
                      ));

                    },
                    child: Text(
                        "Continue",
                        style: TextStyle(
                          fontFamily: "Quando",
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),

                    borderSide: BorderSide(
                      width: 5.0,
                      color: Colors.redAccent,
                    ),
                    splashColor: Colors.redAccent.shade100,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
