import 'package:flutter/material.dart';
import 'package:aravsbirthday/pages/photos.dart';

class PhotosPageView extends StatefulWidget {



  @override
  _PhotosPageViewState createState() => _PhotosPageViewState();
}

class _PhotosPageViewState extends State<PhotosPageView> {


  Map data;
  int pageChanged = 0;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    PageController pagecontroller = PageController(initialPage: data['photosindex'], viewportFraction: 1.065);
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
        title: Text('Photos'),
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
        itemCount: data['photosnum'],

      ),
    );
  }
}