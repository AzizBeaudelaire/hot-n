import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyColors {
  static const int _myPinkPrimaryValue = 0xFFF8BBD0;

  static const MaterialColor myPink = MaterialColor(
    _myPinkPrimaryValue,
    <int, Color>{
      50: Color(0xFFFCE4EC),
      100: Color(0xFFF8BBD0),
      200: Color(0xFFF48FB1),
      300: Color(0xFFF06292),
      400: Color(0xFFEC407A),
      500: Color(_myPinkPrimaryValue),
      600: Color(0xFFD81B60),
      700: Color(0xFFC2185B),
      800: Color(0xFFAD1457),
      900: Color(0xFF880E4F),
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon Application de Rencontre',
      theme: ThemeData(
        primarySwatch: MyColors.myPink,
        backgroundColor: MyColors.myPink.shade100,
      ),
      home: MyHomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HotnPresentationPage()),
                );
              },
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image/Adam.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Adam Alves',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 10),
            Text(
              '18 ans',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10),
            Text(
              'Intéressé par : Les femmes et chez Tonton',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
                // Action à effectuer lorsque le bouton "Déconnexion" est appuyé
              },
              child: Text('Déconnexion'),
            ),
          ],
        ),
      ),
    );
  }
}


class HomePageTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/image/Laura.jpg'),
            ),

            SizedBox(height: 20),
            Text(
              'Laura Gambarini',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 10),
            Text(
              '21 ans',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10),
            Text(
              'Intéressé(e) par : Les hommes et pique-niqué à',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10),
            Text(
              'Peche David',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text('Déconnexion'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hot\'n'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConnectionPage()),
                );
                // Action à effectuer lorsqu'on appuie sur le bouton "Se connecter"
              },
              child: Text('Se connecter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InscriptionPage()),
                );
                // Action à effectuer lorsqu'on appuie sur le bouton "S'inscrire"
              },
              child: Text('S\'inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}
class ConnectionPage extends StatefulWidget {
  @override
  _ConnectionPageState createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  final _emailController = TextEditingController();
  final _motdepasseController = TextEditingController();
  final String _identifiantPredefini = 'test';
  final String _motdepassePredefini = 'test';
  final String test2 = 'test2'; // Ajout de la variable test2

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
        title: Text('Connexion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Entrez votre adresse e-mail',
              ),
            ),
            TextField(
              controller: _motdepasseController,
              decoration: InputDecoration(
                hintText: 'Entrez votre mot de passe',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String motdepasse = _motdepasseController.text;
                if (email == _identifiantPredefini && motdepasse == _motdepassePredefini) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else if (email == test2 && motdepasse == test2){ // Ajout de la condition pour test2
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageTest2()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Votre identifiant ou votre mot de passe est incorrect.'),
                    ),
                  );
                }
              },
              child: Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}




class InscriptionPage extends StatefulWidget {
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
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Entrez votre adresse e-mail',
              ),

            ),
            TextField(
              controller: _motdepasseController,
              decoration: InputDecoration(
                hintText: 'Entrez votre mot de passe' ,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String motdepasse = _motdepasseController.text;
                // Action à effectuer lorsque le bouton "S'inscrire" est appuyé
              },
              child: Text('S\'inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}

class HotnPresentationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hot\'n - Présentation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nous sommes une nouvelle start-up de jeunes Toulousains et nous vous proposons un concept innovant !',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 20),
            Text(
              'Une application entièrement gratuite, exclusivement pour les Toulousains. (Pour le moment).',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 20),
            Text(
              'Le principe est simple, notre application vous propose des match selon vos favoris de la ville rose.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 20),
            Text(
              'On s’explique : Tu auras moins de chance de “matcher” avec quelqu’un qui à comme date ultime une soirée “Chez tonton” qu’avec une personne souhaitant partager une visite au “Musée des Augustins”.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 20),
            Text(
              'Notre projet vient de naître, il est tout récent, nous comptons alors sur vous pour nous faire des retours sur votre expérience Hot’n et ainsi nous permettre de nous améliorer de jour en jour et pouvoir à court terme vous proposer une application adaptée à votre image.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 20),
            Text(
              'L\'équipe Hot\'n',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}