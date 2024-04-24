import 'package:flutter/material.dart';
import 'page_anniversaire.dart';
import 'page_genres_recherches.dart';
import '../main.dart';

class PageNomPrenom extends StatelessWidget {
  const PageNomPrenom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            color: Colors.white,
          ),
          // Skip Button
          Positioned(
            top: 40, // Met le texte "<" 20 pixels du haut
            left: 20, // Met le texte "<" 20 pixels de la gauche
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageAnniversaire()),
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
            top: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageGenresRecherches()),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: MyColors.myPink,
                    fontFamily: 'Poppins', // Utilisation de la police Poppins
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          // Positioned Text Zone
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.50,
            left: 110,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mon\nPrénom',
                  style: TextStyle(
                    color: MyColors.myPurplePinkPrimaryValue, // Updated color to purple
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Votre prénom',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: MyColors.myPink),
                      ),
                    ),
                  ),
                ),
              ],
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
                        fontFamily: 'Poppins', // Utilisation de la police Poppins
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
