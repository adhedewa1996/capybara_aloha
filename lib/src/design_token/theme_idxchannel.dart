import 'package:flutter/material.dart';

import 'color_idxchannel.dart';

class IDXTheme {
  static final main = ThemeData(
    primaryColor: IDXColors.idxBlue,
    canvasColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      displaySmall: const TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      displayMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayLarge: const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineSmall: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      headlineMedium: const TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      titleSmall: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleMedium: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleLarge: const TextStyle(
        fontSize: 11,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.grey[600],
      ),
    ),
  );
}

class IDXTextStyle {
  static TextStyle titleMedium = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle titleSmall = const TextStyle(
    fontSize: 12,
    color: Colors.black,
  );
  static TextStyle titleExtraSmall = const TextStyle(
    fontSize: 10,
    color: Colors.black,
    fontFamily: 'Roboto',
  );
}
