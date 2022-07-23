import 'dart:math';

import 'package:flutter/material.dart';

class singleDiceScreen extends StatefulWidget {
  singleDiceScreen({Key? key}) : super(key: key);

  @override
  State<singleDiceScreen> createState() => _singleDiceScreenState();
}

class _singleDiceScreenState extends State<singleDiceScreen> {
  int random = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      body: SafeArea(
          child: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/Images/$random.png")),
              SizedBox(
                height: 200,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    random = Random().nextInt(6) + 1;
                  });
                  print(random);
                },
                icon: SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/Images/RollTheDice.png")),
                iconSize: 100,
              )
            ],
          ),
        ),
      )),
    );
  }
}
