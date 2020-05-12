import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text("Hola Mundo"),
          )),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Columna 1", style: textStyle),
              Text("Columna 2", style: textStyle),
              Text("Columna 3", style: textStyle)
            ],
          )),
    );
  }
}
