import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Hola Mundo"),
      )),
      body: Center(
        child: Text("Cuerpo"),
      ),
    );
  }
}
