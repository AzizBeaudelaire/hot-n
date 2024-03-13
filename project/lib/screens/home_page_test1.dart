import 'package:flutter/material.dart';
import 'home_page.dart';
import 'hotn_presentation_page.dart';
import 'page_genres.dart'; // Import de la page page_genres.dart

class HomePageTest1 extends StatelessWidget {
  const HomePageTest1({Key? key});

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/Aziz.jpg'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Aziz',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                Text(
                  '21 ans',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  'Intéressé par : Les femmes et les bars',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage()),
                    );
                  },
                  child: const Text('Déconnexion'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HotnPresentationPage()),
                    );
                  },
                  child: const Text('Découvrir Hot\'n'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewPage()), // Redirection vers la page des genres
                    );
                  },
                  child: const Text('Voir les genres'), // Texte du bouton
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
