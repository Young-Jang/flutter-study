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
        appBar: AppBar(title: Container(child:Text('앱임'),alignment: Alignment.topLeft,)),
        body: Container(child: Text('안녕'),alignment:Alignment.topLeft,),
        bottomNavigationBar: Container(child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page),
          ],
        ),color: Colors.black12,
        ),
      )
    );
  }
}

