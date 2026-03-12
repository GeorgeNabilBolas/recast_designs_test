import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_colors.dart';
import 'package:recast_designs_test/core/constants/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/models/social_auth_option.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    super.key,
    required this.option,
    required this.onPressed,
  });

  final SocialAuthOption option;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,

      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(18),
        side: BorderSide(
          color: AppColors.white.withValues(alpha: 0.21),
          width: 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            option.iconPath,
            width: context.w(15),
            height: context.w(15),
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              option.label,
              style: AppTextStyles.style14W700White,
            ),
          ),
        ],
      ),
    );
  }
}
