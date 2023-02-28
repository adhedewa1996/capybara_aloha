import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_sindonews.dart';

class SindoTheme {
  static final main = ThemeData(
    primaryColor: SindoNewsColors.blueSindo,
    canvasColor: Colors.white,
    brightness: Platform.isIOS ? Brightness.light : Brightness.dark,
    fontFamily: "Roboto",
    textTheme: TextTheme(
      displaySmall: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      displayMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      displayLarge: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      headlineSmall: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      headlineMedium: const TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
      titleSmall: TextStyle(
        color: Colors.grey[400],
        fontSize: 12,
      ),
      titleMedium: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      bodySmall: TextStyle(
        color: Colors.grey[600],
        fontSize: 12,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.grey,
    ),
    indicatorColor: SindoNewsColors.blueSindo,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      foregroundColor: Colors.red,
      elevation: 0,
      systemOverlayStyle: Platform.isIOS ? SystemUiOverlayStyle.light : null,
      iconTheme: const IconThemeData(
        color: Colors.red,
      ),
      toolbarTextStyle: TextTheme(
        displayLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: SindoNewsColors.lipstick),
        displayMedium: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
        displaySmall: const TextStyle(
          fontSize: 20,
          color: Colors.black87,
          fontWeight: FontWeight.w200,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontSize: 16.0,
          color: Colors.grey[700],
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        displayLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: SindoNewsColors.lipstick),
        displayMedium: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
        displaySmall: const TextStyle(
          fontSize: 20,
          color: Colors.black87,
          fontWeight: FontWeight.w200,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontSize: 16.0,
          color: Colors.grey[700],
        ),
      ).titleLarge,
    ),
  );

  static final mainDark = ThemeData(
    primaryColor: SindoNewsColors.blackSindo,
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    fontFamily: "Roboto",
    textTheme: TextTheme(
      displaySmall: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: const TextStyle(
        fontSize: 16,
      ),
      titleSmall: TextStyle(
        color: Colors.grey[400],
        fontSize: 12,
      ),
      titleMedium: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        color: Colors.grey[600],
        fontSize: 12,
      ),
    ),
    dividerColor: Colors.grey[800],
    inputDecorationTheme: const InputDecorationTheme(fillColor: Colors.grey),
    indicatorColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: Platform.isIOS ? SystemUiOverlayStyle.dark : null,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      toolbarTextStyle: TextTheme(
        displaySmall: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w200,
        ),
        displayMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white.withOpacity(0.8),
        ),
        displayLarge: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        titleLarge: const TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontSize: 16.0,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        displaySmall: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w200,
        ),
        displayMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white.withOpacity(0.8),
        ),
        displayLarge: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        titleLarge: const TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontSize: 16.0,
        ),
      ).titleLarge,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: SindoNewsColors.whiteBackground),
  );
}
