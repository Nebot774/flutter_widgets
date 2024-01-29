import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppLogin());
}

class MyAppLogin extends StatelessWidget {
  const MyAppLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la etiqueta de debug
      title: 'Login Comarcas App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Comarcas App'),
        ),
        body: LoginFormulario(),
      ),
    );
  }
}

  class LoginFormulario extends StatefulWidget {
    const LoginFormulario({Key? key}) : super(key: key);

    @override
    _LoginFormularioState createState() => _LoginFormularioState();

  }

  class _LoginFormularioState extends State<LoginFormulario> {
    @override
    Widget build(BuildContext context) {
      return Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/dalee.png"),
      fit: BoxFit.cover, //atributo para que cubra todo el fondo
      ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logotipo del instituto
            Image.asset('assets/logo.png'), // Imagen del logo
            SizedBox(height: 30), // Espacio entre el logo y el título
            // Título de la aplicación
            Text(
              'Les comarques de la comunitat',
              style: TextStyle(
                fontSize: 55, // Tamaño más grande
                fontWeight: FontWeight.w800, // Peso de la fuente
                color: Colors.blue, // Color del texto
                fontStyle: FontStyle.italic, // Estilo de fuente en cursiva
                shadows: [
                  Shadow( // Sombra para el texto
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20), // Espacio entre el título y los campos de texto
            // Campo de texto para Usuario
            Container(
              width: MediaQuery.of(context).size.width * 0.4, // Controla el ancho aquí
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Usuari',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20), // Espacio entre usuario y contraseña
            // Campo de texto para contraseña
            Container(
              width: MediaQuery.of(context).size.width * 0.4, // Controla el ancho aquí
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Contrassenya',
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // Atributo para que la contraseña no se muestre
              ),
            ),
          ],
        ),
        ),
      );

    }
  }


