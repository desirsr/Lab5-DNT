import 'package:flutter/material.dart';
import 'packge:audioplayers/audio_cache.dard';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          playSound(soundNumber);
        },
      ), //FlatButton
    ) //Expanded
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(colors: Colors.red, soundNumber:1 ),
                buildKey(colors: Colors.orange, soundNumber:2 ),
                buildKey(colors: Colors.yellow, soundNumber:3 ),
                buildKey(colors: Colors.green, soundNumber:4 ),
                buildKey(colors: Colors.teal, soundNumber:5 ),
                buildKey(colors: Colors.blue, soundNumber:6 ),
                buildKey(colors: Colors.purple  , soundNumber:7 ),

    ], // Widget
    ), //Column
        ), //SafeArea
      ), //Scaffold
    ); //Material
  }
}
