import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart
import 'InformacionComarca.dart';
import 'TiempoComarca.dart';

void main() {
  runApp(MyTempApp());
}

class MyTempApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba Comarcas',
      home: PantallaTemporalPruebaTiempoInfoCOmarca(), // Inicia con la pantalla principal
    );
  }
}

class PantallaTemporalPruebaTiempoInfoCOmarca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtiene los datos de la comarca Safor de Valencia
    var comarcaData = provincies["provincies"][0]["comarques"][13];

    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla Principal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Ver Información de Comarca"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => InformacionComarca(comarcaData: comarcaData),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Ver Tiempo en Comarca"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TiempoComarca(comarcaData: comarcaData),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}