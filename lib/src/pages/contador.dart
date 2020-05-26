import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadodorPageState();
  }
}

class _ContadodorPageState extends State<ContadorPage> {
  int contador = 0;

  Row _construirBotones() {
    FloatingActionButton sumar = FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            contador++;
          });
        });

    FloatingActionButton restar = FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () {
          setState(() {
            contador--;
          });
        });

    FloatingActionButton limpiar = FloatingActionButton(
      child: Icon(Icons.clear),
      onPressed: () {
        setState(() {
          contador = 0;
        });
      },
    );
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30),
      sumar,
      Expanded(child: SizedBox()),
      restar,
      limpiar
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _construirBotones(),
        appBar: AppBar(
          title: Text("Contador"),
        ),
        body: Center(
            child: Text(
          'Contador: $contador',
          style: TextStyle(fontSize: 30),
        )));
  }
}
