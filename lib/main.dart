import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              setButton(1, Colors.green),
              setButton(2, Colors.pinkAccent),
              setButton(3, Colors.yellow),
              setButton(4, Colors.blueAccent),
              setButton(5, Colors.cyan),
              setButton(6, Colors.white60),
              setButton(7, Colors.deepOrangeAccent),
            ],
          ),
        ),
      ),
    );
  }

  void playAudio(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.mp3');
  }

  Widget setButton(int soundNumber, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playAudio(soundNumber);
        },
        color: c,
      ),
    );
  }
}
