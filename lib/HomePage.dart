import 'dart:math';
import 'package:flutter/material.dart';


class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {

  int number=1;
  int number1=3;
  // ignore: non_constant_identifier_names
  void NumberGenerator(){
    number =  Random().nextInt(6)+1;
    number1 =  Random().nextInt(6)+1;
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold
      (
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Roll The Dice "),
      ),
      body:
      Center(
        child: Row(
          children: [
            Expanded(
              child:TextButton(
                  onPressed: (){
                    setState(() {
                      NumberGenerator();
                    });
                  },
                  child: Image.asset('images/dice$number.png')
              ),
            ),
            Expanded(
              child:TextButton(
                  onPressed: (){
                    setState(() {
                      NumberGenerator();
                    });
                  },
                  child: Image.asset('images/dice$number1.png')
              ),
            ),


          ],
        ),
      ),
    );
  }
}