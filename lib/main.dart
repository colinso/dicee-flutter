import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade300,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey.shade800,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rollLeftDice();
                    });
                  },
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                    color: Colors.red[900],
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rollRightDice();
                    });
                  },
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png',
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rollBothDice();
                      });
                    },
                    child: Text(
                      "ROLL BOTH DICE",
                      style: TextStyle(color: Colors.red[50]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void rollRightDice() {
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  void rollLeftDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
  }

  void rollBothDice() {
    rollLeftDice();
    rollRightDice();
  }
}
