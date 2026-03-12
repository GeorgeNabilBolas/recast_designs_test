class AppStrings {
  AppStrings._();

  // Auth Screen
  static const String welcomeTitle = 'Welcome to OasisNow';
  static const String welcomeSubtitle =
      'The best cooking and the best care from our '
      'professional hands to your plate.';
  static const String alreadyHaveAccount = 'Already have an account? ';
  static const String login = 'Login';
  static const String continueWithOasisNow = 'Continue with OasisNow';
  static const String signUp = 'Sign Up';
  static const String or = 'or';
  static const String socialAuthKey = 'welcome';
  static const String loginFeature = 'Login';

  // Social Auth
  static const String continueWithApple = 'Continue with Apple';
  static const String continueWithGoogle = 'Continue with Google';
  static const String apple = 'Apple';
  static const String google = 'Google';

  // Form Fields
  static const String email = 'Email';
  static const String password = 'Password';
  static const String rePassword = 'Re-enter Password';

  // Validation
  static const String emailRequired = 'Email is required';
  static const String emailInvalid = 'Please enter a valid email address';
  static const String passwordRequired = 'Password is required';
  static const String passwordTooShort =
      'Password must be at least 6 characters long';
  static const String confirmPasswordRequired = 'Please confirm your password';
  static const String passwordsDoNotMatch = 'Passwords do not match';

  static String featureComingSoon(String feature) => '$feature is coming soon!';
}
