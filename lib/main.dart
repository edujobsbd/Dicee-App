import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton = 1;
  int rightButton = 1;

  void DiceeFace (){
    leftButton = Random().nextInt(6) + 1;
    rightButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      DiceeFace();
                    },
                  );
                },
                child: Image.asset("images/dice$leftButton.png"),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      DiceeFace();
                    },
                  );
                },
                child: Image.asset("images/dice$rightButton.png"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

