import 'package:flutter/material.dart';
import 'package:flutter_study/dto/get_lucky_number.dart';
import 'package:flutter_study/screen/home_screen.dart';
import 'package:flutter_study/screen/more_screen.dart';
import 'package:flutter_study/widget/bottom_bar.dart';
import 'package:flutter_study/rest/rest_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TabController controller;
    return MaterialApp(
      title: 'youngFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeScreen(),
              Container(
                child: Center(
                  child: Text('임시'),
                ),
              ),
              Container(
                child:  Center(
                child: FutureBuilder<GetLuckyNumber>(
                future: getLuckyNumber("5"),
                builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                return CircularProgressIndicator();
                default:
                if (snapshot.hasError)
                return new Text('Error: ${snapshot.error}');
                else {
                  String? l = snapshot.data?.luckyNumber;
                  return Text(l.toString());
                }
                }}))
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
