import 'dart:math';

import 'package:flutter/material.dart';

class doubleDiceScreen extends StatefulWidget {
  doubleDiceScreen({Key? key}) : super(key: key);

  @override
  State<doubleDiceScreen> createState() => _doubleDiceScreenState();
}

class _doubleDiceScreenState extends State<doubleDiceScreen> {
  int random = 1;
  int twoRandom = 1;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset("assets/Images/$random.png")),
                  SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset("assets/Images/$twoRandom.png")),
                ],
              ),
              SizedBox(
                height: 200,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    random = Random().nextInt(6) + 1;
                    twoRandom = Random().nextInt(6) + 1;
                  });
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
