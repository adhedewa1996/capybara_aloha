import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_sportstarsid.dart';

class SportstarsIdTheme {
  static final main = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: SportstarsIdColors.blueMain,
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
      buttonColor: SportstarsIdColors.blueMain,
      textTheme: ButtonTextTheme.primary,
      height: 54.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      displayLarge: GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setSp(18),
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setSp(18.0),
        color: SportstarsIdColors.blackGrey,
      ),
      displaySmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil().setSp(18.0),
        color: SportstarsIdColors.blackHeading,
      ),
      headlineMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setSp(16.0),
        color: SportstarsIdColors.primaryRed,
      ),
      headlineSmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setSp(12.0),
        color: Colors.white,
      ),
      titleLarge: GoogleFonts.roboto(
        fontSize: ScreenUtil().setSp(12),
        color: SportstarsIdColors.blackGrey,
      ),
      bodyLarge: GoogleFonts.roboto(
        fontSize: ScreenUtil().setSp(14.0),
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: ScreenUtil().setSp(12.0),
        color: SportstarsIdColors.blackCaption,
      ),
      labelLarge: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setSp(16.0),
      ),
      bodySmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil().setSp(12.0),
      ),
    ),
    primaryTextTheme: const TextTheme(
      titleLarge: TextStyle(
        color: SportstarsIdColors.blueMain,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: SportstarsIdColors.blueMain,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      // systemOverlayStyle: SystemUiOverlayStyle.dark
    ),
    dividerColor: Colors.grey[100],
    tabBarTheme: TabBarTheme(
      labelColor: SportstarsIdColors.primaryRed,
      unselectedLabelColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.symmetric(
        vertical: ScreenUtil().setSp(10),
        horizontal: 12,
      ),
      labelStyle: TextStyle(
        fontSize: ScreenUtil().setSp(14),
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: ScreenUtil().setSp(14),
      ),
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: SportstarsIdColors.primaryRed, width: 2),
      ),
    ),
  );

  static ThemeData tablet = main.copyWith(
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      displayLarge: GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setSp(26.0),
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setSp(26),
        color: SportstarsIdColors.blackGrey,
      ),
      displaySmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil().setSp(26.0),
        color: SportstarsIdColors.blackHeading,
      ),
      headlineMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setSp(20.0),
        color: SportstarsIdColors.primaryRed,
      ),
      headlineSmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setSp(16.0),
        color: Colors.white,
      ),
      titleLarge: GoogleFonts.roboto(
        fontSize: ScreenUtil().setSp(16.0),
        color: SportstarsIdColors.blackGrey,
      ),
      bodyLarge: GoogleFonts.roboto(
        fontSize: ScreenUtil().setSp(16.0),
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: ScreenUtil().setSp(16.0),
        color: SportstarsIdColors.blackCaption,
      ),
      labelLarge: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setSp(16.0),
      ),
      bodySmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil().setSp(12.0),
      ),
    ),
    tabBarTheme: main.tabBarTheme.copyWith(
      labelStyle: TextStyle(
        fontSize: ScreenUtil().setSp(16),
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: ScreenUtil().setSp(16),
      ),
      labelPadding: EdgeInsets.symmetric(
        vertical: ScreenUtil().setSp(15),
        horizontal: 15,
      ),
    ),
  );
}
