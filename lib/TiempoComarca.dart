import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart

class TiempoComarca extends StatelessWidget {
  final Map<String, dynamic> comarcaData;

  TiempoComarca({Key? key, required this.comarcaData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtiene las dimensiones de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title: Text("Tiempo en la Comarca"),
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
            // Aquí puedes añadir más widgets si es necesario
          ],
        ),
      ),
    );
  }
}

