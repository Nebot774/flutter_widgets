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
      extendBodyBehindAppBar: true, // Extiende el cuerpo detrás del AppBar
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.6), // Fondo blanco con opacidad
        elevation: 0, // Remueve la sombra del AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Icono de flecha hacia atrás
          onPressed: () {
            Navigator.of(context).pop(); // Regresa a la pantalla anterior
          },
        ),
        title: Text(
          "Comarques de Alacant",
          style: TextStyle(
            fontStyle: FontStyle.italic, // Texto en cursiva
            fontWeight: FontWeight.bold, // Texto en negrita
          ),
        ),
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
