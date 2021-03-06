import 'package:flutter/material.dart';
import 'package:netflix_clone_test/model/model_movie.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;
  BoxSlider({this.movies});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(movies),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> makeBoxImages(List<Movie> movies) {
    List<Widget> results = [];
    for (var i = 0 ; i < movies.length; i++){
      results.add(InkWell( // 클릭 가능
        onTap : () {},
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/'+ movies[i].poster)
          ),
        ),
      ));
    }
    return results;  
  }
}