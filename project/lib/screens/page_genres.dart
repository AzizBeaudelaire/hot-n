import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fond.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8, // Ajuste la largeur de l'image à 80% de la largeur de l'écran
            heightFactor: 0.8, // Ajuste la hauteur de l'image à 80% de la hauteur de l'écran
            child: Text(
              'This is a new page!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color on top of background
              ),
            ),
          ),
        ),
      ),
    );
  }
}
