import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Inicio de Sesión'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Inicio Sesión',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: 'Nombre de usuario',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Contraseña',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Acción cuando se presiona el botón de ingresar
            // Puedes agregar aquí la lógica para verificar el nombre de usuario y la contraseña
          },
          child: const Text('Ingresar'),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            // Navegar a la pantalla de registro cuando se toca el texto "Registrar Usuario"
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistroUsuarioScreen()),
            );
          },
          child: const Text(
            'Registrar Usuario',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class RegistroUsuarioScreen extends StatelessWidget {
  TextEditingController _usuarioController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _usuarioController,
                decoration: InputDecoration(
                  labelText: 'Nombre de usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _contrasenaController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón de registro
                  // Puedes obtener los datos ingresados por el usuario así:
                  String usuario = _usuarioController.text;
                  String contrasena = _contrasenaController.text;

                  // Aquí puedes manejar la lógica de registro del usuario
                  // Por ejemplo, enviar los datos a un servidor, guardar en una base de datos, etc.
                },
                child: Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
