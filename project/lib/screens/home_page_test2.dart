import 'package:flutter/material.dart';
import 'home_page.dart';
import 'hotn_presentation_page.dart';  // Ajout de cette ligne

class HomePageTest2 extends StatelessWidget {
  const HomePageTest2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/Adam.jpg'),
            ),
            const SizedBox(height: 20),
            Text(
              'Adam',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            Text(
              '21 ans',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              'Aime les femmes et les camions', // Description ajoutée
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
