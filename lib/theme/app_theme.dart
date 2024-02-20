import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Constante del color primario
  static const primaryColor = Color.fromARGB(255, 41, 15, 46);
  // Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 124, 98, 129);
  // Constante del color de fondo
  static const backColor = Color.fromARGB(255, 247, 217, 251);

  // Definición del tema de color y estilo de la app
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: primaryColor),
    textTheme: TextTheme(
      // Títulos de primer nivel
      headlineLarge: GoogleFonts.acme(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
        color: primaryColor,
        decoration: TextDecoration.underline,
        decorationColor: primaryColor,
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 1.5,
      ),

      // Fuente para textos muy pequeños
      bodySmall: GoogleFonts.montserrat(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: secondaryColor,
          fontStyle: FontStyle.italic),
    ),
  );
}
