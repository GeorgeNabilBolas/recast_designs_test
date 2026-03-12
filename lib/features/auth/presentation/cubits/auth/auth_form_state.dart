abstract class AuthFormState {}

class SocialAuthForm extends AuthFormState {}

class SignUpAuthForm extends AuthFormState {}

class AuthFormError extends AuthFormState {
  AuthFormError(this.message);

  final String message;
}
