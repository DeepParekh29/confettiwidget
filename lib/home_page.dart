import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ConfettiController();
  bool isPlaying = false;

  @override
  void dispose() {

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [Scaffold(
        appBar: AppBar(),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              if (isPlaying) {
                _controller.stop();
              } else {
                _controller.play();
              }
              isPlaying = !isPlaying;


            },
            child: Text('Lets Party'),
            color: Colors.cyanAccent,
          ),
        ),

      ),
        ConfettiWidget(
            confettiController: _controller,
            blastDirection: pi / 2,
          colors: [
            Colors.cyanAccent,
            Colors.yellowAccent,
            Colors.greenAccent,
            Colors.deepPurple,
            Colors.red
          ],
          gravity: 0.1,
          emissionFrequency: 0.05,
        ),
        ],

      );

  }
}
