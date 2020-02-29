import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(home: Center(child: Text("Hello world")));
//  }
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey[100],
        body: Center(
          child: Image(
              image: AssetImage('images/diamond-png-5.png'),
            ),
        ),
      ),
    );
  }
}
