import 'dart:math';

import 'package:dice_game/Screens/doubleDice_Screen.dart';
import 'package:dice_game/Screens/singleDice_Screen.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotateAnimasyonControl;
  late Animation<double> _rotateAnimasyonDegeri;

  @override
  void initState() {
    super.initState();
    _rotateAnimasyonControl = AnimationController(
        duration: Duration(milliseconds: 10000), vsync: this);
    _rotateAnimasyonDegeri =
        Tween(begin: 0.0, end: 2 * pi).animate(_rotateAnimasyonControl)
          ..addListener(() {
            setState(() {});
          });
    _rotateAnimasyonControl.repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _rotateAnimasyonControl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      body: Center(
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Transform.rotate(
                    angle: _rotateAnimasyonDegeri.value,
                    child: Image.asset("assets/Images/animation_dice.png"),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Zar Sayısı Seçiniz ?",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => singleDiceScreen(),
                                    ));
                              },
                              icon:
                                  Image.asset("assets/Images/single_dice.png"),
                              iconSize: 100,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => doubleDiceScreen(),
                                  ));
                            },
                            icon: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    "assets/Images/double_dice.png")),
                            iconSize: 100,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
