import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 4;
  var rng = new Random();
  var lng = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                 updateDice();
                },
                padding: const EdgeInsets.all(0.0),
                child: Image(
                  image: AssetImage("images/dice$leftDiceNumber.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                 updateDice();
                },
                padding: EdgeInsets.all(0),
                child: Image(
                  image: AssetImage("images/dice$rightDiceNumber.png"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  int updateDice() {
    setState(() {
      leftDiceNumber = lng.nextInt(6) + 1;
      rightDiceNumber = rng.nextInt(6) + 1;
    });
  }
}
