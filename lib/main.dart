import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const RollDiceWidget());
}

class RollDiceWidget extends StatefulWidget {
  const RollDiceWidget({super.key});

  @override
  State<RollDiceWidget> createState() => _RollDiceWidgetState();
}

class _RollDiceWidgetState extends State<RollDiceWidget> {
  var indexImage = 1;

  void clickDice() {
    setState(() {
      indexImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.green],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dice-$indexImage.png',
                width: 100,
              ),
              ElevatedButton.icon(
                onPressed: clickDice,
                label: const Text('roll the dice'),
                icon: const Icon(Icons.directions_run),
              )
            ],
          ),
        ),
      ),
    );
  }
}
