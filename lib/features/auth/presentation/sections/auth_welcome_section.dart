import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_strings.dart';
import 'package:recast_designs_test/core/constants/app_colors.dart';
import 'package:recast_designs_test/core/constants/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import 'package:recast_designs_test/core/utils/widgets/gradient_text.dart';

class AuthWelcomeSection extends StatelessWidget {
  const AuthWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientText(
          AppStrings.welcomeTitle,
          gradient: AppColors.goldGradient,
          style: AppTextStyles.style24W700Gold,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: context.h(6)),
        Text(
          AppStrings.welcomeSubtitle,
          style: AppTextStyles.style12W400White60,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
