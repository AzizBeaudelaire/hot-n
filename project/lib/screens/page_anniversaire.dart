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
                  MaterialPageRoute(builder: (context) => PageGenres()),
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
                    MaterialPageRoute(builder: (context) => PageNomPrenom()),
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
                    'Mon\nanniversaire !',
                    style: TextStyle(
                      color: MyColors.myPurplePinkPrimaryValue,
                      fontFamily: 'Poppins', // Utilisation de la police Poppins
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
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
                    fontFamily: 'Poppins', // Utilisation de la police Poppins
                    color: Colors.white, // Couleur du texte
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
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
