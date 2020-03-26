import 'package:flutter/material.dart';
import 'package:netflix/model/movie_model.dart';
import 'package:netflix/widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //create dummy data
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        )
        
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'images/bbongflix_logo.png',
              height: 25,
              fit: BoxFit.contain,
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                'TV 프로그램',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                '영화',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                '내가 찜한 콘텐츠',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ));
  }
}