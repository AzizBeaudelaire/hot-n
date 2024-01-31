import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_page_test1.dart';
import 'home_page_test2.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({Key? key});

  @override
  _ConnectionPageState createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _motdepasseController = TextEditingController();
  final String _identifiantPredefini = 'test';
  final String _motdepassePredefini = 'test';
  final String test2 = 'test2';
  final String test1 = 'test1';

  @override
  void dispose() {
    _emailController.dispose();
    _motdepasseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Connexion'),
    ),
    body: Center(
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    SizedBox(
    width: 200, // Ancho personalizado para el campo de texto del correo electrónico
    child: TextField(
    controller: _emailController,
    decoration: const InputDecoration(
    hintText: 'E-mail',
    ),
    ),
    ),
    const SizedBox(height: 10), // Espaciado entre los campos de texto
    SizedBox(
    width: 200, // Ancho personalizado para el campo de texto de la contraseña
    child: TextField(
    controller: _motdepasseController,
    obscureText: true,
    decoration: const InputDecoration(
    hintText: 'Mot de passe',
    ),
    ),
    ),
    const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String motdepasse = _motdepasseController.text;
                if (email == _identifiantPredefini && motdepasse == _motdepassePredefini) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                } else if (email == test2 && motdepasse == test2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePageTest2()),
                  );
                } else if (email == test1 && motdepasse == test1) {  // Condition pour test1
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePageTest1()),  // Utilisation de HomePageTest1
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Votre identifiant ou votre mot de passe est incorrect.'),
                    ),
                  );
                }
              },
              child: const Text('Se connecter'),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
