import 'package:flutter/material.dart';

class HotnPresentationPage extends StatelessWidget {
  // Constructeur de la classe HotnPresentationPage
  const HotnPresentationPage({Key? key});

  // Méthode de construction de l'interface utilisateur
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barre d'applications avec un titre
      appBar: AppBar(
        title: const Text('Hot\'n - Présentation'),
      ),
      // Marge intérieure de 16.0 pixels autour du contenu
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // SingleChildScrollView permet de faire défiler le contenu à l'intérieur de la colonne
        child: SingleChildScrollView(
          // Colonnes empilant des widgets les uns sur les autres
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Liste de widgets, chaque widget étant une carte d'information
            children: [
              // Appel à une méthode pour construire une carte avec un texte spécifique
              _buildCard(
                context,
                'Nous sommes une nouvelle start-up de jeunes Toulousains et nous vous proposons un concept innovant !',
              ),
              _buildCard(
                context,
                'Une application entièrement gratuite, exclusivement pour les Toulousains. (Pour le moment).',
              ),
              _buildCard(
                context,
                'Le principe est simple, notre application vous propose des match selon vos favoris de la ville rose.',
              ),
              _buildCard(
                context,
                'On s’explique : Tu auras moins de chance de “matcher” avec quelqu’un qui à comme date ultime une soirée “Chez tonton” qu’avec une personne souhaitant partager une visite au “Musée des Augustins”.',
              ),
              _buildCard(
                context,
                'Notre projet vient de naître, il est tout récent, nous comptons alors sur vous pour nous faire des retours sur votre expérience Hot’n et ainsi nous permettre de nous améliorer de jour en jour et pouvoir à court terme vous proposer une application adaptée à votre image.',
              ),
              _buildCard(
                context,
                'L\'équipe Hot\'n',
              ),
              // Espacement vertical de 20.0 pixels
              const SizedBox(height: 20),
              // Bouton avec une action de retour à la page précédente
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Retour à la page précédente (dans ce cas, la page d'accueil)
                },
                child: const Text('Retour à l\'accueil'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Méthode privée pour construire une carte avec un texte spécifique
  Widget _buildCard(BuildContext context, String text) {
    return SizedBox(
      // La carte occupe toute la largeur disponible
      width: double.infinity,
      child: Card(
        // Élévation de la carte pour ajouter une ombre
        elevation: 3.0,
        // Forme de la carte avec des bords arrondis
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        // Marge intérieure de 16.0 pixels dans la carte
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          // Texte à l'intérieur de la carte avec un style spécifique
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
