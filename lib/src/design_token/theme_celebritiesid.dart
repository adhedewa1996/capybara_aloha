import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'color_celebritiesid.dart';

class CelebritiesIdTheme {
  static final main = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: CelebritiesIdColors.pinkMain,
    canvasColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[50],
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: CelebritiesIdColors.pinkMain,
      textTheme: ButtonTextTheme.primary,
      height: 54.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
    // textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    //   displaySmall: GoogleFonts.poppins(
    //     fontWeight: FontWeight.w600,
    //     fontSize: 16.0,
    //     color: CelebritiesIdColors.bodyBlack,
    //   ),
    //   displayMedium: GoogleFonts.poppins(
    //     fontWeight: FontWeight.w500,
    //     fontSize: 18.0,
    //     color: CelebritiesIdColors.headlineBlack,
    //   ),
    //   displayLarge: GoogleFonts.poppins(
    //     fontWeight: FontWeight.w600,
    //     fontSize: 22.0,
    //     color: CelebritiesIdColors.headlineBlack,
    //   ),
    //   headlineSmall: GoogleFonts.poppins(
    //     fontWeight: FontWeight.w500,
    //     fontSize: 12.0,
    //     color: CelebritiesIdColors.fieldText,
    //   ),
    //   headlineMedium: GoogleFonts.poppins(
    //     fontWeight: FontWeight.w600,
    //     fontSize: 14.0,
    //     color: CelebritiesIdColors.pinkText,
    //   ),
    //   titleLarge: GoogleFonts.poppins(
    //     fontWeight: FontWeight.w500,
    //     fontSize: 10.0,
    //     color: CelebritiesIdColors.greyText,
    //   ),
    //   bodyMedium: GoogleFonts.poppins(
    //     fontSize: 12.0,
    //     color: CelebritiesIdColors.blackCaption,
    //   ),
    //   bodyLarge: GoogleFonts.poppins(
    //     fontSize: 14.0,
    //   ),
    //   bodySmall: GoogleFonts.roboto(
    //     fontWeight: FontWeight.w500,
    //     fontSize: 16.0,
    //     color: CelebritiesIdColors.fieldText,
    //   ),
    //   labelLarge: GoogleFonts.poppins(
    //     fontWeight: FontWeight.w600,
    //     fontSize: 16.0,
    //   ),
    // ),
    primaryTextTheme: const TextTheme(
      titleLarge: TextStyle(
        color: CelebritiesIdColors.pinkMain,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: CelebritiesIdColors.pinkMain,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    dividerTheme: const DividerThemeData(
      color: CelebritiesIdColors.dividerPink,
      thickness: 2,
    ),
  );
}
