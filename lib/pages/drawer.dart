import 'package:flutter/material.dart';
import 'package:aravsbirthday/pages/homescreen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          //colors: [Color.fromRGBO(79, 176, 255, 1),Color.fromRGBO(255, 209, 148, 1)],//Color.fromRGBO(142, 45, 226, 1)
          colors: [Color.fromRGBO(84, 51, 255, 1), Color.fromRGBO(32, 189, 255, 1), Color.fromRGBO(165, 254, 203, 1)],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 100.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Arav Chadda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 23.0,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/memes');
                },
                icon: Icon(Icons.image,color: Colors.white,),
                label: Text(
                  "Memes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                  ),
                ),
            ),
            SizedBox(height: 15.0,),
            FlatButton.icon(
              icon: Icon(Icons.image, color: Colors.white,),
              label: Text(
                "Photos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21.0,
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/photos');
              },
            )
          ],
        ),
      ),
    );
  }
}
