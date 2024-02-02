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
      home: ComarcasValencia(), // Tu pantalla de Comarcas de Valencia como pantalla de inicio
    );
  }
}




class ComarcasValencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<dynamic> comarcasDeValencia = provincies["provincies"][0]["comarques"];

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
          "Comarques de Valencia",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: comarcasDeValencia.length,
        itemBuilder: (context, index) {
          var comarca = comarcasDeValencia[index];
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


