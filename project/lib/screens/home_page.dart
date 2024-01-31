import 'package:flutter/material.dart';
import 'connection_page.dart';
import 'inscription_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Emplacement pour le logo
            Image.asset(
              'assets/images/Logo_icon_transparent.png', // Assurez-vous de mettre le bon chemin
              width: 200, // Ajustez la largeur selon vos besoins
              height: 200, // Ajustez la hauteur selon vos besoins
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConnectionPage()),
                );
              },
              child: const Text('Se connecter'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InscriptionPage()),
                );
              },
              child: const Text(
                'Pas encore de compte ? Inscrivez-vous !',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue, // Vous pouvez ajuster la couleur selon vos préférences
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
