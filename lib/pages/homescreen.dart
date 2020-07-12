import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xOffset = 0.0;
  double yOffset = 0.0;
  double scaleFactor = 1.0;
  bool isDrawerOpen = false;
  //On tap of the hbd container, streamers should flow down the screen
  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: isDrawerOpen? BorderRadius.only(topLeft: Radius.circular(20.0)) : BorderRadius.circular(0),
        color: Colors.white,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children :<Widget>[
          SizedBox(
            height: 30.0,
          ),
          Row(
          children: <Widget>[
            isDrawerOpen? IconButton(
              icon: Icon(
                  Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  xOffset = 0;
                  yOffset = 0;
                  scaleFactor = 1;
                  isDrawerOpen = false;
                });
              },
            ):IconButton(
              icon: Icon(
                  Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  xOffset = 160;
                  yOffset = 115;
                  scaleFactor = 0.85;
                  isDrawerOpen = true;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    //colors: [Color.fromRGBO(74, 0, 224, 0.8),Color.fromRGBO(142, 45, 226, 0.7)],
                    colors: [Color.fromRGBO(84, 51, 255, 0.8), Color.fromRGBO(32, 189, 255, 1), Color.fromRGBO(165, 254, 203, 1)],
                  ),
                  boxShadow:[
                    BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 8.0,
                        spreadRadius: 7.0
                    ),
                  ]
              ),
              width: 340,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                          'Happy Birthday!',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Have a good one, bro.",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: <Widget> [
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Align(
                  alignment: Alignment(0,-0.2),
                  child: Container(
                    width: 340,
                    height: 420,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueGrey[200],
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 8.0,
                          spreadRadius: 7.0
                        ),
                      ]
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,-0.1),
                child: Container(
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/homepageimage.png'),
                    ),
                  ),
                  width: 300,
                  height: 480,
                ),
              ),
              /*Image(
                image: AssetImage('assets/meme1.jpeg'),
              ),*/
            ]
          ),
        ]
      ),
    );
  }
}