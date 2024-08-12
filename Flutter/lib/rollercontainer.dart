import 'dart:math';

import 'package:flutter/material.dart';

class RollerContainer extends StatefulWidget{
  const RollerContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RollerContainerState();
  }

}

class _RollerContainerState extends State<RollerContainer> {

  int _picSelected = 1;
  final Random _random = Random(1234);

  void _rollDice(){
    setState(() {
      _picSelected = _random.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/plain-dice-$_picSelected.png"),
            Text(
              '$_picSelected',
              style: const TextStyle(fontSize: 36, color: Colors.deepPurple),
            ),
            ElevatedButton(onPressed: _rollDice,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 194, 232, 149),
                  elevation: 12.0,
                  textStyle: const TextStyle(
                      fontSize: 36,
                      color: Colors.deepPurple
                  )
              ),
              child: const Text('Roll'),
            )
          ],
        ),
      )
    );
  }

}
