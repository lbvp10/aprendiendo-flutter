import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  Future<List<dynamic>> cargarOpciones() async {
    List<dynamic> opciones = [];
    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];
    print(opciones);
    return opciones;
  }
}

final menuProvider = _MenuProvider();
