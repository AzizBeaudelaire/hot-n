import 'package:flutter/material.dart';
import 'page_anniversaire.dart';
import 'home_page_test1.dart';
import '../main.dart';

class PageGenres extends StatelessWidget {
  const PageGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fond.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40, // Met le texte "<" 20 pixels du haut
            left: 20, // Met le texte "<" 20 pixels de la gauche
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageTest1()),
                );
              },
              child: Text(
                '<',
                style: TextStyle(
                  color: MyColors.myPink, // Text color
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20, // Met le texte "Skip" 20 pixels du haut
            right: 20, // Met le texte "Skip" 20 pixels de la droite
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageAnniversaire()),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: MyColors.myPink, // Text color
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0, // Met le texte "Skip" 20 pixels du bas
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white, // Couleur du rectangle blanc
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90), // Coin supérieur gauche arrondi
                  topRight: Radius.circular(90), // Coin supérieur droit arrondi
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Ajoutez votre logique pour gérer le clic sur le bouton ici
        },
        backgroundColor: MyColors.myPink, // Couleur de fond du bouton
        elevation: 0, // Aucune élévation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0), // Angles arrondis à 90 degrés
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0), // Marge interne verticale
          child: Text(
            'Je veux être notifié',
            style: TextStyle(
              color: Colors.white, // Couleur du texte
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
