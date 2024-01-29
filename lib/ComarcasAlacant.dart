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
      title: 'Comarques de Alacant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ComarcasAlacant(),
    );
  }
}




class ComarcasAlacant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<dynamic> comarcasDeValencia = provincies["provincies"][1]["comarques"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Comarques de Alacant"),
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
