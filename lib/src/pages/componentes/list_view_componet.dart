import 'package:flutter/material.dart';

class ListViewComponent extends StatelessWidget {
  final List<String> opciones = ["Ana", "Carlos", "Mario"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Componentes")),
      body: ListView(
        children: _crearOpcionesLista(),
      ),
    );
  }

  List<Widget> _crearOpcionesLista() {
    return opciones
        .map((f) => Column(
              children: <Widget>[
                ListTile(
                  title: Text("$f"),
                  leading: Icon(Icons.assignment_ind),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {},
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
