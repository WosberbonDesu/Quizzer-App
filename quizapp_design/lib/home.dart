import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp_design/quizpage.dart';
import 'package:quizapp_design/settings.dart';


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
    "images/linux.png",
  ];

  List<String> des = [
    "Python is one of the most popular and fastest programming language since half a decade.\nIf You think you have learnt it.. \nJust test yourself !!",
    "Java has always been one of the best choices for Enterprise World. If you think you have learn the Language...\nJust Test Yourself !!",
    "Javascript is one of the most Popular programming language supporting the Web.\nIt has a wide range of Libraries making it Very Powerful !",
    "C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
    "Linux is a OPEN SOURCE Operating System which powers many Servers and Workstation.\nIt is also a top Priority in Developement Work !",
  ];

  Widget customcard(String langname, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(

          color: Colors.redAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.redAccent.shade100,
                    Colors.red,
                  ]),
                ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(10.0),
                      child: Image.asset("images/sıv.png",width: 60,height: 60,),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8.0),child: Text("Skogsrå",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: "Quando"
                    ),),)
                  ],
                ),
              ),
            ),
            CustomListTile(Icons.person,"Profile",()=>{}),
            CustomListTile(Icons.notifications,"Notification",()=>{}),
            CustomListTile(Icons.settings,"Settings", ()=>{},),
            CustomListTile(Icons.lock,"Log Out",()=>{}),
            CustomListTile(Icons.people_alt,"Leader Board",()=>{}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => EditPage(),
                      ),
                  );
                  },
                  child: Text("For New Account",
                    style: TextStyle(
                      fontFamily: "Quando",
                      color: Colors.black,
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
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Quizzer",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),

      ),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage(
              "images/bar.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            customcard("Python", images[0], des[0]),
            customcard("Java", images[1], des[1]),
            customcard("Javascript", images[2], des[2]),
            customcard("C++", images[3], des[3]),
            customcard("Linux", images[4], des[4]),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget{

  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon,this.text,this.onTap);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(7.0, 6, 7.0, 6),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.redAccent.shade400 )),
        ),
        child: InkWell(

          splashColor: Colors.redAccent,
          onTap: onTap,
          child: Container(

            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(text,style:
                        TextStyle(
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
























