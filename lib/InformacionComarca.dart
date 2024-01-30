import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart

class InformacionComarca extends StatelessWidget {
  final Map<String, dynamic> comarcaData;

  InformacionComarca({Key? key, required this.comarcaData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          comarcaData["comarca"], // Nombre dinámico de la comarca
          style: TextStyle(
            fontStyle: FontStyle.italic, // Texto en cursiva
            fontWeight: FontWeight.bold, // Texto en negrita
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(comarcaData["img"], fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                comarcaData["comarca"],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Capital: ${comarcaData["capital"]}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(comarcaData["desc"]),
            ),
          ],
        ),
      ),
    );
  }
}
