import 'package:flutter/material.dart';
import 'package:widgets_flutter/TiempoComarca.dart';
import 'ComarcaCard.dart';
import 'comarques.dart';// Importa el archivo comarcas.dart

class InformacionComarca extends StatelessWidget {
  final Map<String, dynamic> comarcaData;

  InformacionComarca({Key? key, required this.comarcaData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          comarcaData["comarca"],
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.info), // Primer ícono
              onPressed: () {
                // Acciones para el primer ícono
              },
            ),
            IconButton(
              icon: Icon(Icons.cloud), // Segundo ícono para el tiempo
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TiempoComarca(
                      comarcaData: comarcaData,
                      pantallaComarcas: 'NombreDeTuPantallaDeComarcas', // Reemplaza esto con el nombre apropiado
                    ),
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

