import 'package:flutter/material.dart';
import 'home_page.dart';
import 'hotn_presentation_page.dart';  // Ajout de cette ligne

class HomePageTest1 extends StatelessWidget {
  const HomePageTest1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Center(
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
              'Intéressé par : Les femmes et les bars', // Description ajoutée
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
          ],
        ),
      ),
    );
  }
}
