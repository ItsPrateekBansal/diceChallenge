import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int first = 1, second = 6;
  int score = 7;
  var rng = new Random();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeValues() {
    first = rng.nextInt(6) + 1;
    second = rng.nextInt(6) + 1;
    score = first + second;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: deprecated_member_use
          RaisedButton(
            color: Colors.lightBlueAccent,
            onPressed: () {},
            child: Text("Total Score is $score !"),
          ),
          Row(
            children: [
              Expanded(
                // flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    child: Image.asset('images/dice$first.png'),
                    onPressed: () {
                      changeValues();
                    },
                  ),
                ),
              ),
              Expanded(
                // flex: 2,++
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    child: Image.asset('images/dice$second.png'),
                    onPressed: () {
                      changeValues();
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            color: Colors.lightBlueAccent,
            child: Text("Let's Roll!"),
            onPressed: () {
              changeValues();
            },
          ),
        ],
      ),
    );
  }
}
