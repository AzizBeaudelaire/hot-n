import 'package:flutter/material.dart';
import 'page_anniversaire.dart';
import 'home_page_test1.dart';
import 'page_regle.dart';
import '../main.dart';

class PageGenres extends StatelessWidget {
  const PageGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fond blanc
          Container(
            color: Colors.white,
          ),
          Positioned(
            top: 40, // Met le texte "<" 20 pixels du haut
            left: 20, // Met le texte "<" 20 pixels de la gauche
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageRegle()),
                );
              },
              child: Image.asset(
                'assets/icons/icon_return.png',
                width: 24,
                height: 24,
                color: MyColors.myPink,
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
          // Ajout du texte au milieu de l'écran
          Center(
            child: SizedBox(
              height: 280, // Hauteur fixe de la zone de texte
              child: Text(
                'Je suis un·e',
                textAlign: TextAlign.center, // Centrer le texte horizontalement
                style: TextStyle(
                  fontFamily: 'Poppins', // Utilisation de la police Poppins
                  fontWeight: FontWeight.bold, // Utilisation du poids Medium
                  fontSize: 28,
                  color: MyColors.myPurplePinkPrimaryValue, // Conversion de l'entier en couleur
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              //width: MediaQuery.of(context).size.width * 0.55, // Réduire la largeur à 80% de la largeur de l'écran
              child: Text(
                'Choisis le genre qui te représente le mieux.\n L\'authenticité est la clé des relations significatives',
                textAlign: TextAlign.start, // Alignement à gauche du texte
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
                    'Autres',
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
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 56.0, // Hauteur du conteneur du bouton "SUIVANT"
              color: Colors.blue, // Couleur du conteneur du bouton "SUIVANT" (modifiable)
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton.extended(
                    onPressed: () {
                      // Ajoutez votre logique pour gérer le clic sur le bouton ici
                    },
                    backgroundColor: MyColors.myPink, // Couleur de fond du bouton
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Angles arrondis à 30 degrés
                    ),
                    label: Text(
                      'SUIVANT',
                      style: TextStyle(
                        color: Colors.white, // Couleur du texte
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
