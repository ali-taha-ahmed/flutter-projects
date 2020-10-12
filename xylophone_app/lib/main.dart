import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              noteKey(noteColor: Colors.red, noteNum: 1),
              noteKey(noteColor: Colors.orange, noteNum: 2),
              noteKey(noteColor: Colors.yellow, noteNum: 3),
              noteKey(noteColor: Colors.green, noteNum: 4),
              noteKey(noteColor: Colors.teal, noteNum: 5),
              noteKey(noteColor: Colors.blue, noteNum: 6),
              noteKey(noteColor: Colors.purple, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }

  void playNote({int noteNum}) {
    final player = AudioCache();
    setState(() {
      player.play('note$noteNum.wav');
    });
  }

  Widget noteKey({Color noteColor, int noteNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playNote(noteNum: noteNum);
        },
        color: noteColor,
      ),
    );
  }
}
