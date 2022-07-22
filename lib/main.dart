import 'dart:math';

import 'package:flutter/material.dart';

/// Displays random images as we tap on the button
/// how to use image in the flutter

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 165, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 97, 187),
        title: Center(child: Text('Magic 🎱 Ball')),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballPng = 1; //Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballPng = Random().nextInt(5) + 1;
          });
            print(ballPng);
         },
          child: Image.asset('images/ball$ballPng.png'),
    ));
  }
}
