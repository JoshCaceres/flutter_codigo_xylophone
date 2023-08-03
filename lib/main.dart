import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void playNote(int note) {
    AudioPlayer media = AudioPlayer();
    media.play(AssetSource('audio/note$note.wav'));
  }

  Widget buildKey(Color color, int note) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XylophoneApp'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.blue, 1),
          buildKey(Colors.amber, 2),
          buildKey(Colors.red, 3),
          buildKey(Colors.purple, 4),
        ],
      ),
    );
  }
}
