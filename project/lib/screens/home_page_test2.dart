import 'package:flutter/material.dart';
import 'home_page.dart';  // Ajout de cette ligne

class HomePageTest2 extends StatelessWidget {
  const HomePageTest2({super.key});

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
              backgroundImage: AssetImage('assets/images/Adam.jpg'),
            ),
            // ...
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: const Text('Déconnexion'),
            ),
          ],
        ),
      ),
    );
  }
}
