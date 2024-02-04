import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart
import 'InformacionComarca.dart';
import 'ComarcasValencia.dart';
import 'ComarcasAlacant.dart';
import 'ComarquesCastello.dart';

class TiempoComarca extends StatelessWidget {
  final Map<String, dynamic> comarcaData;
  final String pantallaComarcas;

  TiempoComarca({Key? key, required this.comarcaData, required this.pantallaComarcas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.6),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            int count = 0;
            Navigator.of(context).popUntil((route) {
              return count++ == 2;
            });
          },
        ),
        title: Text("Tiempo en ${comarcaData["comarca"]}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9, // Define la relación de aspecto de la imagen
              child: Image.asset(
                'assets/tiempo2.png',
                fit: BoxFit.cover, // Cubre el espacio mientras mantiene las proporciones
                width: MediaQuery.of(context).size.width, // Ancho de la pantalla
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Población: ${comarcaData["poblacio"]}"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Latitud: ${comarcaData["coordenades"][0]}"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Longitud: ${comarcaData["coordenades"][1]}"),
            ),
            // Otros widgets que quieras incluir...
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => InformacionComarca(comarcaData: comarcaData),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.cloud),
              onPressed: () {
                // Otras acciones para el ícono del tiempo
              },
            ),
          ],
        ),
      ),
    );
  }
}



