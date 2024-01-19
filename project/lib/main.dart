import 'package:flutter/material.dart';
import '../screens/home_page.dart';  // Assurez-vous que le chemin est correct
import '../screens/connection_page.dart';  // Assurez-vous que le chemin est correct
import '../screens/inscription_page.dart';  // Assurez-vous que le chemin est correct


void main() => runApp(const MyApp());

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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon Application de Rencontre',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: MyColors.myPink).copyWith(background: MyColors.myPink.shade100),
      ),
      home: const MyHomePage(),
    );
  }
}
