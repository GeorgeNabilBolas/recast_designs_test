import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle style24W700Gold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.0,
    letterSpacing: -1.2,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle style12W400White60 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Colors.white60,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle style14W700White = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    height: 1.0,
    letterSpacing: 0.14,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle style16W700Black = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    height: 1.0,
    letterSpacing: -0.48,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle style12BoldGrey400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.grey200,
    height: 1.0,
    letterSpacing: -0.36,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle style13BoldWhite70 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: Colors.white70,
    letterSpacing: -0.36,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle style12W700 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle style13W700White = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    letterSpacing: -0.27,
    leadingDistribution: TextLeadingDistribution.even,
  );
}
