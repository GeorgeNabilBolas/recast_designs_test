import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/theme/app_colors.dart';
import 'package:recast_designs_test/core/theme/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import 'package:recast_designs_test/core/constants/app_dimensions.dart';

class AuthFormButton extends StatelessWidget {
  const AuthFormButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.useGradient = false,
  });

  final String label;
  final VoidCallback onPressed;
  final bool useGradient;

  @override
  Widget build(BuildContext context) {
    final textStyle = useGradient ? AppTextStyles.style16W700Black : AppTextStyles.style14W700White;

    final decoration = useGradient
        ? BoxDecoration(
            gradient: AppColors.goldGradient,
            borderRadius: BorderRadius.all(Radius.circular(context.w(AppDimensions.radiusLg))),
            border: Border.all(color: AppColors.goldLight, width: AppDimensions.borderWidth),
          )
        : BoxDecoration(
            color: AppColors.grey800,
            borderRadius: BorderRadius.all(Radius.circular(context.w(AppDimensions.radiusLg))),
          );

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: context.h(AppDimensions.btnPaddingV)),
        decoration: decoration,
        child: Center(child: Text(label, style: textStyle)),
      ),
    );
  }
}
