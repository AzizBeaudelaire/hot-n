import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_page_test2.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({super.key});

  @override
  _ConnectionPageState createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _motdepasseController = TextEditingController();
  final String _identifiantPredefini = 'test';
  final String _motdepassePredefini = 'test';
  final String test2 = 'test2';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Entrez votre adresse e-mail',
              ),
            ),
            TextField(
              controller: _motdepasseController,
              decoration: const InputDecoration(
                hintText: 'Entrez votre mot de passe',
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
    );
  }
}
