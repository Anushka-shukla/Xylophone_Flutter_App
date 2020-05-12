import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded buildKey({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(1);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color:Colors.red,SoundNumber:1),
              buildKey(color:Colors.yellow,SoundNumber:2),
              buildKey(color:Colors.blue,SoundNumber:3),
              buildKey(color:Colors.green,SoundNumber:4),
              buildKey(color:Colors.orange,SoundNumber:5),
              buildKey(color:Colors.teal,SoundNumber:6),
              buildKey(color:Colors.lime,SoundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
