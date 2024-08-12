import 'package:dicerollerapp/rollercontainer.dart';
import 'package:flutter/material.dart';

class AppHomepage extends StatelessWidget{

  final String title;

  const AppHomepage({super.key, required this.title});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(child: Text(title)),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RollerContainer()
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}