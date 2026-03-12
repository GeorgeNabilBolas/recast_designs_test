import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Core Palette
  static const Color beige = Color(0xFFC2A788);
  static const Color white = Color(0xFFFFFFFF);
  static const Color white60 = Color(0x99FFFFFF);
  static const Color black = Color(0xFF000000);

  // Gold Palette
  static const Color goldDark = Color(0xFFCC995E);
  static const Color gold = Color(0xFFE4B679);
  static const Color goldLight = Color(0xFFFEE5C4);

  // Gradient Palette
  static const LinearGradient goldGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [gold, goldLight],
    stops: [0.0, 1.0],
  );

  // Grey scale
  static const Color grey900 = Color(0xFF212121);
  static const Color grey850 = Color(0xFF242424);
  static const Color grey800 = Color(0xFF323232);
  static const Color grey750 = Color(0xFF424242);
  static const Color grey700 = Color(0xFF474747);
  static const Color grey300 = Color(0xFFBABABA);
  static const Color grey200 = Color(0xFFBDBDBD);

  // custom colors
  static const Color errorRed = Color(0xFFA91C1C);
}
