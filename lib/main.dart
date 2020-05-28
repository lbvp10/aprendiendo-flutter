import 'package:flutter/material.dart';
import 'package:hola_mundo/src/pages/componentes/list_view_componet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componentes',
        debugShowCheckedModeBanner: false,
        home: ListViewComponent());
  }
}
