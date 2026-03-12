import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_strings.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import 'package:recast_designs_test/core/constants/app_dimensions.dart';

import '../widgets/sign_up_form.dart';
import '../widgets/social_auth_form.dart';

class AuthFormSection extends StatelessWidget {
  const AuthFormSection({
    super.key,
    required this.isSocialAuth,
    required this.signUpKey,
  });

  final bool isSocialAuth;
  final GlobalKey<SignUpFormState> signUpKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(AppDimensions.authFormHeight),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: AppDimensions.animationSlow),
        switchInCurve: Curves.easeOutBack,
        switchOutCurve: Curves.easeInCubic,
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.95, end: 1.0).animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.1),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            ),
          );
        },
        child: isSocialAuth
            ? const SocialAuthForm(
                key: ValueKey(AppStrings.socialAuthKey),
              )
            : SignUpForm(key: signUpKey),
      ),
    );
  }
}
