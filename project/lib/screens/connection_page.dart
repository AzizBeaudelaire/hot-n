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
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/fond.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          // Contenu central
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0), // Coins arrondis
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                hintText: 'E-mail',
                                border: InputBorder.none, // Pas de bordure
                              ),
                            ),
                          ),
                          const Divider(), // Ligne de séparation
                          SizedBox(
                            width: 200,
                            child: TextField(
                              controller: _motdepasseController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                hintText: 'Mot de passe',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
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
                      } else if (email == test1 && motdepasse == test1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePageTest1()),
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
          // Bouton de retour
          Positioned(
            top: 40,
            left: 20,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context); // Retour à la page précédente
                  },
                ),
                Text('back'), // Ajout du texte "Back"
              ],
            ),
          ),
        ],
      ),
    );
  }
}
