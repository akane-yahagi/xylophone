import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void _playSound(int number) {
  final player = AudioPlayer();
  player.play(AssetSource('note$number.wav'));
}

Widget _soundButton({Color color, int number}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        _playSound(number);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _soundButton(color: Colors.red, number: 1),
              _soundButton(color: Colors.orange, number: 2),
              _soundButton(color: Colors.yellow, number: 3),
              _soundButton(color: Colors.green, number: 4),
              _soundButton(color: Colors.teal, number: 5),
              _soundButton(color: Colors.blue, number: 6),
              _soundButton(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
