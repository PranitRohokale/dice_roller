import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  //variable
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  //function
  void roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.center,
            child: Text(
              "Dice Roller".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.w500),
            )),
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(5.5),
                    child: GestureDetector(
                      child: BounceInLeft(
                        child: Image(
                          image:
                              AssetImage("images/dice-png-$leftDiceNumber.png"),
                        ),
                      ),
                      onDoubleTap: () => roll(),
                    )),
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(5.5),
                    child: GestureDetector(
                      child: BounceInRight(
                        child: Image(
                          image: AssetImage(
                              "images/dice-png-$rightDiceNumber.png"),
                        ),
                      ),
                      onDoubleTap: () => roll(),
                    )),
              ),
            ],
          )),

          //btn
          Expanded(
              child: Center(
                  child: BounceInDown(
            child: FlatButton(
                height: 60,
                minWidth: 150.0,
                color: Colors.deepPurpleAccent,
                clipBehavior: Clip.hardEdge,
                child: Text(
                  "Roll",
                  textScaleFactor: 2.5,
                ),
                onPressed: () {
                  roll();
                }),
          ))),
        ],
      ),
    );
  }
}
