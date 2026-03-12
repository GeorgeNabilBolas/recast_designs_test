import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_form_state.dart';

class AuthFormCubit extends Cubit<AuthFormState> {
  AuthFormCubit() : super(SocialAuthForm());

  bool get isSocialAuth => state is SocialAuthForm;
  void showSignUpForm() => emit(SignUpAuthForm());

  void validate({required String? validationError}) {
    if (validationError != null) {
      emit(AuthFormError(validationError));
    } else {
      emit(SocialAuthForm());
    }
  }
}
