import 'package:flutter/material.dart';
import 'package:aravsbirthday/pages/memepageview.dart';

class MemeCard extends StatefulWidget {
  final String meme;
  final int memeindex;

  MemeCard({this.meme, this.memeindex});

  @override
  _MemeCardState createState() => _MemeCardState();
}

class _MemeCardState extends State<MemeCard> {



  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Image(
          image: AssetImage('assets/${widget.meme}'),
          fit: BoxFit.cover,
        ) ,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/memepageview', arguments: {
          'memeindex' :widget.memeindex,
        });
      },
    );
  }
}