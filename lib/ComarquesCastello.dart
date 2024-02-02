import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart
import 'InformacionComarca.dart';

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
      home: ComarcasCastello(),
    );
  }
}




class ComarcasCastello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<dynamic> comarcasDeCastello = provincies["provincies"][2]["comarques"];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.6),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Comarques de Castello",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: comarcasDeCastello.length,
        itemBuilder: (context, index) {
          var comarca = comarcasDeCastello[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => InformacionComarca(comarcaData: comarca),
                ),
              );
            },
            child: ComarcaCard(
              nombreComarca: comarca["comarca"],
              imagenUrl: comarca["img"],
            ),
          );
        },
      ),
    );
  }
}