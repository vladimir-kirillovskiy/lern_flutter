import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget makeButton({String filename, Color color}) {
    return Expanded(
        child: FlatButton(
        onPressed: () {
          player.play(filename);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                makeButton(filename: 'note1.wav', color: Colors.red),
                makeButton(filename: 'note2.wav', color: Colors.orange),
                makeButton(filename: 'note3.wav', color: Colors.yellow),
                makeButton(filename: 'note4.wav', color: Colors.green),
                makeButton(filename: 'note5.wav', color: Colors.teal),
                makeButton(filename: 'note6.wav', color: Colors.blue),
                makeButton(filename: 'note7.wav', color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
