import 'package:aravsbirthday/pages/drawer.dart';
import 'package:aravsbirthday/pages/memepageview.dart';
import 'package:flutter/material.dart';
import 'package:aravsbirthday/pages/homescreen.dart';
import 'package:aravsbirthday/pages/memes.dart';
import 'package:aravsbirthday/pages/photos.dart';
import 'package:aravsbirthday/pages/photospageview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'/home',
    routes:{
      '/home': (context) => Home(),
      '/memes': (context) => Memes(),
      '/memepageview': (context) => MemePageView(),
      '/photos': (context) => Photos(),
      '/photospageview': (context) => PhotosPageView(),
    },
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}




