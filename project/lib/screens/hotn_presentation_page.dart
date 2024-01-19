import 'package:flutter/material.dart';

class HotnPresentationPage extends StatelessWidget {
  const HotnPresentationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hot\'n - Présentation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nous sommes une nouvelle start-up de jeunes Toulousains et nous vous proposons un concept innovant !',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Text(
              'Une application entièrement gratuite, exclusivement pour les Toulousains. (Pour le moment).',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'Le principe est simple, notre application vous propose des match selon vos favoris de la ville rose.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'On s’explique : Tu auras moins de chance de “matcher” avec quelqu’un qui à comme date ultime une soirée “Chez tonton” qu’avec une personne souhaitant partager une visite au “Musée des Augustins”.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'Notre projet vient de naître, il est tout récent, nous comptons alors sur vous pour nous faire des retours sur votre expérience Hot’n et ainsi nous permettre de nous améliorer de jour en jour et pouvoir à court terme vous proposer une application adaptée à votre image.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'L\'équipe Hot\'n',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
