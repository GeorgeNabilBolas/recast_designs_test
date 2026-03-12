import 'package:recast_designs_test/core/constants/app_strings.dart';

import '../models/social_auth_option.dart';

final List<SocialAuthOption> socialAuthSeedOptions = [
  const SocialAuthOption(
    id: SocialAuthOptionId.apple,
    providerName: AppStrings.apple,
    iconPath: 'assets/svgs/apple_logo.svg',
    label: AppStrings.continueWithApple,
  ),
  const SocialAuthOption(
    id: SocialAuthOptionId.google,
    providerName: AppStrings.google,
    iconPath: 'assets/svgs/google_logo.svg',
    label: AppStrings.continueWithGoogle,
  ),
];
