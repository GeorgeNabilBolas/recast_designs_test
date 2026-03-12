import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_colors.dart';
import 'package:recast_designs_test/core/constants/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';

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
    final textStyle = useGradient
        ? AppTextStyles.style16W700Black
        : AppTextStyles.style14W700White;

    final decoration = useGradient
        ? BoxDecoration(
            gradient: AppColors.goldGradient,
            borderRadius: BorderRadius.all(Radius.circular(context.w(14))),
            border: Border.all(color: AppColors.goldLight, width: 1.5),
          )
        : BoxDecoration(
            color: AppColors.grey800,
            borderRadius: BorderRadius.all(Radius.circular(context.w(14))),
          );

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: context.h(14.0)),
        decoration: decoration,
        child: Center(child: Text(label, style: textStyle)),
      ),
    );
  }
}
