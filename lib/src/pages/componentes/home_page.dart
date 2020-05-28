import 'package:flutter/material.dart';
import 'package:hola_mundo/src/pages/providers/menu_provider.dart';
import 'package:icons_helper/icons_helper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _crearLista());
  }

  Widget _crearLista() {
    return FutureBuilder(
        future: menuProvider.cargarOpciones(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _crearItems(snapshot.data),
          );
        });
  }

  List<Widget> _crearItems(List<dynamic> data) {
    return data.map((f) {
      return ListTile(
        title: Text(f['texto']),
        leading: Icon(
          getIconUsingPrefix(name: f['icon'].toString()),
          color: Colors.blue,
        ),
        onTap: () => {print("object")},
      );
    }).toList();
  }
}
