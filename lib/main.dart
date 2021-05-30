import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
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
  int leftDiceNumber = 1, rightDiceNumber = 2;
  void getdiceNum() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                getdiceNum();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                getdiceNum();
                print('Right Button Got Pressed.');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {
  int leftDiceNumber = 1, rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left Button Got Pressed.');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right Button Got Pressed.');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
