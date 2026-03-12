import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_strings.dart';
import 'package:recast_designs_test/core/constants/app_colors.dart';
import 'package:recast_designs_test/core/constants/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/helpers/app_snackbar.dart';
import 'package:recast_designs_test/core/utils/widgets/gradient_text.dart';

class AuthBottomSection extends StatelessWidget {
  const AuthBottomSection({
    super.key,
    required this.isSocialAuth,
    required this.errorMessage,
  });

  final bool isSocialAuth;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      crossFadeState: !isSocialAuth
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      firstChild: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.alreadyHaveAccount,
            style: AppTextStyles.style13BoldWhite70,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () => AppSnackBar.showComingSoon(
              context,
              featureName: AppStrings.loginFeature,
            ),
            child: GradientText(
              AppStrings.login,
              gradient: AppColors.goldGradient,
              style: AppTextStyles.style12W700,
            ),
          ),
        ],
      ),
      secondChild: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage ?? '',
            style: AppTextStyles.style13W700White.copyWith(
              color: AppColors.errorRed,
            ),
          ),
        ],
      ),
    );
  }
}
