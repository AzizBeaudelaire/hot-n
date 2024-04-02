import 'package:flutter/material.dart';
import 'home_page_test1.dart';
import 'page_genres.dart';
import '../main.dart';
import 'page_nom_prenom.dart';

class PageAnniversaire extends StatelessWidget {
  const PageAnniversaire({Key? key}) : super(key: key);

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
          // Navigation Buttons
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  topRight: Radius.circular(90),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 280, // Hauteur fixe de la zone de texte
              child: Text(
                'Mon\nanniversaire!',
                textAlign: TextAlign.start, // Centrer le texte horizontalement
                style: TextStyle(
                  fontFamily: 'Poppins', // Utilisation de la police Poppins
                  fontWeight: FontWeight.w600, // Utilisation du poids Medium
                  fontSize: 28,
                  color: MyColors.myPurplePinkPrimaryValue, // Conversion de l'entier en couleur
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageTest1()),
                );
              },
              child: Text(
                'Return back',
                style: TextStyle(
                  color: MyColors.myPink,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
                    MaterialPageRoute(builder: (context) => PageNomPrenom()),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: MyColors.myPink,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Date Picker Fields
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            right: 0,
            child: Center (
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Date de naissance',
                    style: TextStyle(
                      color: MyColors.myPurplePinkPrimaryValue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextFormField(
                      maxLength: 10,
                      textAlign: TextAlign.center, // Centra el texto dentro del TextFormField
                      style: TextStyle(fontSize: 14), // Ajusta el tamaño de la fuente
                      decoration: InputDecoration(
                        hintText: 'JJ/MM/AAAA',
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
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 56.0, // Hauteur de votre BottomAppBar
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
    );
  }
}
