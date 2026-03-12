import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_strings.dart';
import 'package:recast_designs_test/core/theme/app_colors.dart';
import 'package:recast_designs_test/core/theme/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/helpers/app_snackbar.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import 'package:recast_designs_test/features/auth/data/seed/social_auth_seed_data.dart';

import 'social_auth_button.dart';

class SocialAuthForm extends StatelessWidget {
  const SocialAuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          spacing: context.h(7),
          children: [
            ...socialAuthSeedOptions.map(
              (option) => SocialAuthButton(
                option: option,
                onPressed: () => AppSnackBar.showComingSoon(
                  context,
                  featureName: option.label,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(child: Divider(color: AppColors.white, thickness: 1)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w(8.0)),
              child: Text(
                AppStrings.or,
                style: AppTextStyles.style12BoldGrey400,
              ),
            ),
            Expanded(child: Divider(color: AppColors.white, thickness: 1)),
          ],
        ),
      ],
    );
  }
}
