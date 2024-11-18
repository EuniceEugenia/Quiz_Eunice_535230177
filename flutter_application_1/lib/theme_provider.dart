import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeFontProvider with ChangeNotifier {
  // Daftar warna utama untuk tema
  final List<MaterialColor> _primarySwatches = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  // Daftar font
  final List<TextTheme> _fontThemes = [
    GoogleFonts.poppinsTextTheme(),
    GoogleFonts.robotoTextTheme(),
    GoogleFonts.montserratTextTheme(),
  ];

  int _themeIndex = 0; // Indeks tema default
  int _fontIndex = 0; // Indeks font default

  ThemeData get currentTheme {
    return ThemeData(
      primarySwatch: _primarySwatches[_themeIndex],
      textTheme: _fontThemes[_fontIndex],
    );
  }

  void updateTheme(int index) {
    _themeIndex = index;
    notifyListeners();
  }

  void updateFont(int index) {
    _fontIndex = index;
    notifyListeners();
  }
}
