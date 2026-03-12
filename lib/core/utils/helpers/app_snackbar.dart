import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_strings.dart';
import 'package:recast_designs_test/core/constants/app_colors.dart';
import 'package:recast_designs_test/core/constants/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';

class AppSnackBar {
  AppSnackBar._();

  /// Shows a standard "coming soon" snackbar with an animated icon.
  static void showComingSoon(
    BuildContext context, {
    required String featureName,
  }) {
    showCustom(
      context,
      message: AppStrings.featureComingSoon(featureName),
      icon: Icons.auto_awesome,
      iconColor: AppColors.gold,
    );
  }

  /// Shows a customizable, styled snackbar following the app's design system.
  static void showCustom(
    BuildContext context, {
    required String message,
    required IconData icon,
    required Color iconColor,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: duration,
          backgroundColor: AppColors.grey850,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.h(12)),
            side: const BorderSide(color: AppColors.grey700),
          ),
          content: Row(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: context.h(20),
              ),
              SizedBox(width: context.w(12)),
              Expanded(
                child: Text(
                  message,
                  style: AppTextStyles.style13W700White,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
