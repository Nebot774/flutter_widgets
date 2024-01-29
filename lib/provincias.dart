import 'package:flutter/material.dart';
import 'comarques.dart';

//CODIGO TEMPORAL PARA PROBAR PANTALLA
void main() {
  runApp(MyTempApp());
}

class MyTempApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la etiqueta de debug
      title: 'Prueba Provincias',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PantallaProvincias(), //pantalla de provincias como pantalla de inicio
    );
  }
}
// FINAL CODIGO TEMPORAL PARA PROBAR PANTALLA

class PantallaProvincias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provincias"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/dalee.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: provincies["provincies"].length,
          itemBuilder: (context, index) {
            var provincia = provincies["provincies"][index];
            return Container(
              width: MediaQuery.of(context).size.width * 0.35, // La mitad de la anchura de la pantalla
              height: MediaQuery.of(context).size.width * 0.35, // Para mantener el aspecto de círculo
              margin: EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.center, // Alinea el texto en el centro de la imagen
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Hace el contenedor circular
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.black26,
                          spreadRadius: 2,
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(provincia["img"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    provincia["provincia"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      color: Colors.white, // Color blanco para el texto
                      shadows: <Shadow>[ // Sombra para mejorar la legibilidad
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(150, 0, 0, 0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
