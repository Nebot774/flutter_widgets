import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart

class TiempoComarca extends StatelessWidget {
  final Map<String, dynamic> comarcaData;

  TiempoComarca({Key? key, required this.comarcaData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiempo en la Comarca"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/tiempo.png'), // Asegúrate de que esta imagen exista en tus assets
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Población: ${comarcaData["poblacio"]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Latitud: ${comarcaData["coordenades"][0]}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Longitud: ${comarcaData["coordenades"][1]}"),
          ),
        ],
      ),
    );
  }
}
