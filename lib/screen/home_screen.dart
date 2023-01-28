import 'package:flutter/material.dart';
import 'package:flutter_study/model/model_movie.dart';
import 'package:flutter_study/widget/box_slider.dart';
import 'package:flutter_study/widget/carousel_slider.dart';
import 'package:flutter_study/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap(
        {
          'title': 'Neuschwanstein Castle',
          'keyword': 'disney castle',
          'poster': 'germany.jpg',
          'like': false
        }
    ),Movie.fromMap(
        {
          'title': 'london eye',
          'keyword': 'london eye night',
          'poster': 'London.jpg',
          'like': false
        }
    ),Movie.fromMap(
        {
          'title': 'Jungfrau',
          'keyword': 'Swiss Jungfrau top',
          'poster': 'Swiss.jpg',
          'like': false
        }
    ),Movie.fromMap(
        {
          'title': 'CeskyKrumlov castle',
          'keyword': 'cesko',
          'poster': 'CeskyKrumlov.jpg',
          'like': false
        }
    ),
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
        ),
        CircleSlider(movies: movies,),
        BoxSlider(movies: movies)
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
            'London.jpg',
            fit: BoxFit.contain,
            height: 25,
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
              '내가 찜한 컨텐츠',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
