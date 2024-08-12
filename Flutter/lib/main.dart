import 'package:dicerollerapp/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const AppHomepage(title: 'Dice Roller',),
  ));
}