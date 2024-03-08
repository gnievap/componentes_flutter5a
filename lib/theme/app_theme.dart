import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Constante del color primario
  static const primaryColor = Color.fromARGB(255, 41, 15, 46);
  // Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 124, 98, 129);
  // Constante del color de fondo
  static const backColor = Color.fromARGB(255, 247, 217, 251);
  // Constante de color de botones y otros widgets
  static const widgetsColor = Color.fromARGB(219, 163, 5, 171);
  // Constante de color de botones y widgets deshabilitados
  static const disabledWidgetColor = Color.fromARGB(255, 125, 123, 123);

  // Definición del tema de color y estilo de la app
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // colores del tema claro
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      titleTextStyle: GoogleFonts.lato(
        color: backColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
      size: 35.0,
    ),
    // estilo de los botones
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(widgetsColor),
        foregroundColor: MaterialStateProperty.all(backColor),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(
            fontSize: 22.5,
          ),
        ),
      ),
    ),
    // estilo de los textos
    textTheme: TextTheme(
      // Títulos de primer nivel
      headlineLarge: GoogleFonts.pacifico(
        fontSize: 30.0,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        // decoration: TextDecoration.underline,
        // decorationColor: primaryColor,
        // decorationStyle: TextDecorationStyle.double,
        // decorationThickness: 0.5,
      ),

      headlineMedium: GoogleFonts.alexandria(
        fontSize: 25.5,
        fontWeight: FontWeight.w700,
        color: secondaryColor,
      ),

      // Fuente para textos muy pequeños
      bodySmall: GoogleFonts.lobsterTwo(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: secondaryColor,
          fontStyle: FontStyle.italic),
    ),
  );
}
