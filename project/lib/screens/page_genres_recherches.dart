import 'package:flutter/material.dart';
import 'page_nom_prenom.dart';
import '../main.dart';
import 'home_page_test1.dart';

class PageGenresRecherches extends StatelessWidget {
  const PageGenresRecherches({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => PageNomPrenom()),
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
          //Positioned(
          //  top: 20, // Met le texte "Skip" 20 pixels du haut
          //  right: 20, // Met le texte "Skip" 20 pixels de la droite
          //  child: Padding(
          //    padding: const EdgeInsets.all(16.0),
          //    child: GestureDetector(
          //      onTap: () {
          //        Navigator.push(
          //          context,
          //          MaterialPageRoute(builder: (context) => HomePagetest1()),
          //        );
          //      },
          //      child: Text(
          //        'Skip',
          //        style: TextStyle(
          //          color: MyColors.myPink, // Text color
          //          fontSize: 18,
          //          fontWeight: FontWeight.bold,
          //        ),
          //      ),
          //    ),
          //  ),
          //),
        ],
      ),
    );
  }
}
