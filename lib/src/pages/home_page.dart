import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 30);
  FloatingActionButton floatingActionButton = FloatingActionButton(
      onPressed: () {
        print("Ey click");
      },
      child: Icon(Icons.add));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
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
              Text('bueno', style: textStyle)
            ],
          )),
    );
  }
}
