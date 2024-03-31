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
          // Ajout du texte au milieu de l'écran
          Center(
            child: SizedBox(
              height: 280, // Hauteur fixe de la zone de texte
              child: Text(
                'Je suis un·e',
                textAlign: TextAlign.center, // Centrer le texte horizontalement
                style: TextStyle(
                  fontFamily: 'Poppins', // Utilisation de la police Poppins
                  fontWeight: FontWeight.w800, // Utilisation du poids Medium
                  fontSize: 28,
                  color: MyColors.myPurplePinkPrimaryValue, // Conversion de l'entier en couleur
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: 200,
              child: Text(
                'Choisis le genre qui te représente le mieux.\n L\'authenticité est la clé des relations significatives',
                textAlign: TextAlign.center , // Centrer le texte horizontalement
                style: TextStyle(
                  fontFamily: 'Poppins', // Utilisation de la police Poppins
                  fontWeight: FontWeight.w400, // Utilisation du poids Medium
                  fontSize: 10,
                  color: Colors.grey, // Conversion de l'entier en couleur
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.4, // Position verticale à 10% de la hauteur de l'écran
            left: 0,
            right: 0,
            child: Center(
              child: OutlinedButton(
                onPressed: () {
                  // Ajoutez votre logique pour gérer le clic sur le bouton ici
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: MyColors.myPink, width: 3), // Contour rose de taille 3
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Angles arrondis à 30 degrés
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0), // Marge interne
                  child: Text(
                    'Homme',
                    style: TextStyle(
                      color: MyColors.myPink, // Couleur du texte rose
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3, // Position verticale à 10% de la hauteur de l'écran
            left: 0,
            right: 0,
            child: Center(
              child: OutlinedButton(
                onPressed: () {
                  // Ajoutez votre logique pour gérer le clic sur le bouton ici
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: MyColors.myPink, width: 3), // Contour rose de taille 3
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Angles arrondis à 30 degrés
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0), // Marge interne
                  child: Text(
                    'Femme',
                    style: TextStyle(
                      color: MyColors.myPink, // Couleur du texte rose
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2, // Position verticale à 10% de la hauteur de l'écran
            left: 0,
            right: 0,
            child: Center(
              child: OutlinedButton(
                onPressed: () {
                  // Ajoutez votre logique pour gérer le clic sur le bouton ici
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: MyColors.myPink, width: 3), // Contour rose de taille 3
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Angles arrondis à 30 degrés
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0), // Marge interne
                  child: Text(
                    'Les autres >',
                    style: TextStyle(
                      color: MyColors.myPink, // Couleur du texte rose
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
          borderRadius: BorderRadius.circular(30.0), // Angles arrondis à 90 degrés
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0), // Marge interne verticale
          child: Text(
            'SUIVANT',
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
