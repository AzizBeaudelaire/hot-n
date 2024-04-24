import 'package:flutter/material.dart';
import 'home_page_test1.dart'; // Importation de la page home_page_test1.dart
import 'page_genres.dart'; // Importation de la page PageGenres.dart
import '../main.dart';
import 'page_anniversaire.dart'; // Importation de la page PageAnniversaire.dart

class PageRegle extends StatelessWidget {
  const PageRegle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond blanc
      body: Stack(
        children: [
          // Logo
          Positioned(
            top: 50, // Position en haut de la page
            left: 100, // Position à gauche de la page
            child: Image.asset(
              'assets/images/Logo_icon_transparent.png',
              width: 125,
              height: 125,
            ),
          ),
          // Bouton "Skip"
          Positioned(
            top: 20, // Met le texte "Skip" 20 pixels du haut
            right: 20, // Met le texte "Skip" 20 pixels de la droite
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageGenres()),
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
          // Bouton de retour
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
              child: Image.asset(
                'assets/icons/icon_return.png',
                width: 24,
                height: 24,
                color: MyColors.myPink,
              ),
            ),
          ),
          // Texte "Bienvenue sur Hot'n"
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Text(
              'Bienvenue sur Hot\'n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                color: MyColors.myPurplePink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Texte
          Positioned(
            top: 210,
            left: 50,
            right: 50,
            child: Text(
              'Voici les règles, merci de faire en sorte que notre application soit bienveillante.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Texte
          Positioned(
            top: 340,
            left: 100,
            right: 90,
            child: Text(
              'Sois toi-même',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Texte
          Positioned(
            top: 355,
            left: 100,
            right: 60,
            child: Text(
              'Assure toi que tes photos, ton âge et ta bio soient fidèles à toi-même',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // Texte
          Positioned(
            top: 420,
            left: 100,
            right: 90,
            child: Text(
              'Ta sécurité avant tout',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Texte
          Positioned(
            top: 435,
            left: 100,
            right: 60,
            child: Text(
              'Ne partage jamais tes informations personelles',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // Texte
          Positioned(
            top: 480,
            left: 100,
            right: 90,
            child: Text(
              'Sois bienveillant',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Texte
          Positioned(
            top: 495,
            left: 100,
            right: 60,
            child: Text(
              'Traites les autres membres comme tu aimerais être traité',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
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
