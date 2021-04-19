import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  void setRandomNumber () => setState(() => ballNumber = Random().nextInt(5) + 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ask me anything",
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: TextButton(
              onPressed: setRandomNumber,
              child: Image.asset("images/ball$ballNumber.png"),
            )
          ),
        ),
      )
    );
  }
}

