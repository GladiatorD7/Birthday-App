import 'package:flutter/material.dart';
import 'package:aravsbirthday/pages/memes.dart';

class MemePageView extends StatefulWidget {



  @override
  _MemePageViewState createState() => _MemePageViewState();
}

class _MemePageViewState extends State<MemePageView> {


  Map data;
  int pageChanged = 0;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    PageController pagecontroller = PageController(initialPage: data['memeindex'], viewportFraction: 1.065);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              pagecontroller.animateToPage(--pageChanged, duration: Duration(milliseconds: 250,), curve: Curves.easeIn);
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: (){
              pagecontroller.animateToPage(++pageChanged, duration: Duration(milliseconds: 250,), curve: Curves.easeIn);
            },
          ),
        ],
        title: Text('Memes'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: pagecontroller,
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index){
          setState(() {
            pageChanged = index;
          });
        },
        itemBuilder: (context, index){
          int imagenum = index+1;
          return Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
                child: Image(
                  image: AssetImage('assets/meme$imagenum.jpeg'),
                ),
              ),
          );
        },
        itemCount: data['memesnum'],

      ),
    );
  }
}
