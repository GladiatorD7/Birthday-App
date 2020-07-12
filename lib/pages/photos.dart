import 'package:flutter/material.dart';
import 'package:aravsbirthday/pages/memecard.dart';

class Photos extends StatelessWidget {

  List<String> photolist = ['meme1.jpeg','meme2.jpeg','meme3.jpeg','meme4.jpeg','meme5.jpeg','meme6.jpeg','meme7.jpeg','meme8.jpeg','meme9.jpeg','meme10.jpeg','meme11.jpeg'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: CustomScrollView(
          slivers: <Widget> [
            SliverAppBar(

              expandedHeight: 150.0,
              pinned: true,
              floating: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(84, 51, 255, 1), Color.fromRGBO(32, 189, 255, 1), Color.fromRGBO(165, 254, 203, 1)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Photos"),
                  ),
                  /*background: Image(
                      image: AssetImage('assets/memesheader1.jpeg'),
                      fit: BoxFit.cover,
                    ),*/
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 5.0, crossAxisSpacing: 5.0),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  String url = photolist[index];
                  return Material(
                    child: InkWell(
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/$url'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/photospageview', arguments: {
                          'photosindex' :index, 'photosnum':photolist.length
                        });
                      },
                    ),
                  );
                },
                childCount: photolist.length,
              ),
            ),
            SliverFillRemaining(
              child: Container(),
            )
          ]
      ),
    );
  }
}