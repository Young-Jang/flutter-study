import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions : [Icon(Icons.find_in_page_outlined),Icon(Icons.menu),Icon(Icons.alarm_rounded)],
          title: Row(children: <Widget>[
            Text("도림동3가"),
            Icon(Icons.star),
          ],),),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset('London.jpg',width: 150,),
              Container(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('런던의 야경입니다.'),
                    Text('도림동'),
                    Text('7000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}

