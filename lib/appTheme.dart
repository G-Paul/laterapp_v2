import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightThemes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: Color(0xFF14213d),
      onPrimary: Colors.white,
      secondary: Color(0xFFFFFFFF),
      onSecondary: Color(0xA42A6EFF),
      background: Color(0xFFFFFFFF),
      tertiary: Color(0xff2ec4b6),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      displayMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      displaySmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      headlineLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      headlineMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      headlineSmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      titleLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      titleMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      titleSmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      labelLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      labelMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      labelSmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d),
      ),
      bodyLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d).withOpacity(0.5),
      ),
      bodyMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d).withOpacity(0.5),
      ),
      bodySmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFF14213d).withOpacity(0.5),
      ),
    ),
  );
}

class DarkThemes {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      secondary: Color(0xFF14213d),
      onSecondary: Color(0xA42A6EFF),
      primary: Color(0xFFFFFFFF),
      background: Color(0xFF14213d),
      tertiary: Color(0xff2ec4b6),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      displayMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      displaySmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      headlineLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      headlineMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      headlineSmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      titleLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      titleMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      titleSmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      labelLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      labelMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      labelSmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      bodyLarge: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      bodyMedium: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      bodySmall: GoogleFonts.play(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
    ),
  );
}
