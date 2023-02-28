import 'package:flutter/material.dart';

class SindoNewsColors {
  static const Color blueSindo = Color(0xff093c8a);
  static const Color blackSindo = Color(0xff212121);
  static const Color marine = Color(0xff062d69);
  static const Color lipstick = Color(0xffcd1722);
  static const Color lightBlueGrey = Color(0xffbdd2e4);
  static const Color lightGrey = Color(0xFFEBEBEB);
  static const Color lightPinkGrey = Color(0xffc0c0c0);
  static const Color verylightPinkGrey = Color(0xffeeeeee);
  static const Color warmGrey = Color(0xff9b9797);
  static const Color darkishBlue = Color(0xff00498e);
  static const Color whiteBackground = Color(0xfff5f4f4);
  static const Color hiLitePrimary = Color(0xFF38E8BE);
  static const Color blueHilite = Color(0xFF092A48);
  static const Color greyDot = Color(0xFFC4C4C4);
  static const Color textHilite = Color(0xFF3C3D3D);
  static const Color nasional = Color(0xFFE20A18);
  static const Color international = Color(0xFF49B5EE);
  static const Color metro = Color(0xFFFA7121);
  static const Color daerah = Color(0xFF1CA34A);
  static const Color lifestyle = Color(0xFFE73280);
  static const Color sport = Color(0xFF1452AF);
  static const Color ekbis = Color(0xFF9DD204);
  static const Color tekno = Color(0xFFA5CAD6);
  static const Color sains = Color(0xFF1C3C62);
  static const Color otomotif = Color(0xFF949494);
  static const Color edukasi = Color(0xFFFCC608);
  static const Color kalam = Color(0xFFC29800);
  static const Color genSindo = Color(0xFF0168FF);
  static const Color infografis = Color(0xFFFF8D5C);
  static const Color video = Color(0xFFB821BB);
  static const Color photo = Color(0xFF38BFB0);
}

Color lineChannelColors(String namaChannel) {
  switch (namaChannel) {
    case 'Nasional':
      return SindoNewsColors.nasional;
    case 'Metro':
      return SindoNewsColors.metro;
    case 'International':
      return SindoNewsColors.international;
    case 'Daerah':
      return SindoNewsColors.daerah;
    case 'Lifestyle':
      return SindoNewsColors.lifestyle;
    case 'Sains':
      return SindoNewsColors.sains;
    case 'Sports':
      return SindoNewsColors.sport;
    case 'Tekno':
      return SindoNewsColors.tekno;
    case 'Ekonomi Bisnis':
      return SindoNewsColors.ekbis;
    case 'Otomotif':
      return SindoNewsColors.otomotif;
    case 'Edukasi':
      return SindoNewsColors.edukasi;
    case 'Kalam':
      return SindoNewsColors.kalam;
    case 'GenSINDO':
      return SindoNewsColors.genSindo;
    case 'Infografis':
      return SindoNewsColors.infografis;
    case 'Video':
    case 'video':
      return SindoNewsColors.video;
    case 'Photo':
      return SindoNewsColors.photo;
    default:
      return Colors.white;
  }
}
