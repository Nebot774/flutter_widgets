import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart


void main() {
  runApp(MyTempApp());
}

class MyTempApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la etiqueta de debug
      title: 'Comarcas de Valencia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ComarcasValencia(), // Tu pantalla de Comarcas de Valencia como pantalla de inicio
    );
  }
}




class ComarcasValencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<dynamic> comarcasDeValencia = provincies["provincies"][0]["comarques"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Comarcas de Valencia"),
      ),
      body: ListView.builder(
        itemCount: comarcasDeValencia.length,
        itemBuilder: (context, index) {
          var comarca = comarcasDeValencia[index];
          return ComarcaCard(
            nombreComarca: comarca["comarca"],
            imagenUrl: comarca["img"],
          );
        },
      ),
    );
  }
}

