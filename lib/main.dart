import 'package:flutter/material.dart';
import 'package:roll_dice/HomePage.dart';




void main(){
  runApp(RollingDice());
}

class RollingDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceGame(),
      theme: ThemeData(
          primarySwatch: Colors.orange),

    );

  }
}