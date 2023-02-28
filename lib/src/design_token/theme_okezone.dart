import 'package:flutter/material.dart';

import 'color_okezone.dart';

class OkezoneTheme {
  static final main = ThemeData(
    primaryColor: OkezoneColors.okezonePrimary,
    canvasColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      displaySmall: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayLarge: const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineSmall: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      headlineMedium: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      titleSmall: const TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: const TextStyle(
        fontSize: 11,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        color: Colors.grey[600],
        fontSize: 12,
      ),
    ),
  );
}
