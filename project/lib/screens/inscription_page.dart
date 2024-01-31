import 'package:flutter/material.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  _InscriptionPageState createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  final _emailController = TextEditingController();
  final _motdepasseController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _motdepasseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                hintText: 'Entrez votre mot de passe' ,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String motdepasse = _motdepasseController.text;
                // Action à effectuer lorsque le bouton "S'inscrire" est appuyé
              },
              child: const Text('S\'inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}
