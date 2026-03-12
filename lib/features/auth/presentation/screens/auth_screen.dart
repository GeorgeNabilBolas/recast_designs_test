import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recast_designs_test/core/constants/app_strings.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import 'package:recast_designs_test/features/auth/presentation/cubits/auth/auth_form_cubit.dart';
import 'package:recast_designs_test/features/auth/presentation/cubits/auth/auth_form_state.dart';
import 'package:recast_designs_test/features/auth/presentation/widgets/primary_button.dart';
import 'package:recast_designs_test/core/constants/app_dimensions.dart';

import '../sections/animated_food_section.dart';
import '../sections/auth_bottom_section.dart';
import '../sections/auth_form_section.dart';
import '../sections/auth_welcome_section.dart';
import '../widgets/sign_up_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthFormCubit(),
      child: const Scaffold(body: _AuthScreenBody()),
    );
  }
}

class _AuthScreenBody extends StatefulWidget {
  const _AuthScreenBody();

  @override
  State<_AuthScreenBody> createState() => _AuthScreenBodyState();
}

class _AuthScreenBodyState extends State<_AuthScreenBody> {
  final _signUpKey = GlobalKey<SignUpFormState>();

  void _onPrimaryButtonPressed(AuthFormCubit cubit) {
    if (cubit.isSocialAuth) {
      cubit.showSignUpForm();
    } else {
      final error = _signUpKey.currentState?.validate();
      cubit.validate(validationError: error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthFormCubit, AuthFormState>(
      builder: (context, state) {
        final isSocialAuth = state is SocialAuthForm;
        final errorMessage = switch (state) {
          AuthFormError() => state.message,
          _ => null,
        };

        return Column(
          children: [
            const AnimatedFoodSection(),
            SizedBox(height: context.h(AppDimensions.spacingLg)),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.w(AppDimensions.paddingHorizontal),
                    ),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        children: [
                          const AuthWelcomeSection(),
                          AuthFormSection(
                            isSocialAuth: isSocialAuth,
                            signUpKey: _signUpKey,
                          ),
                          AuthFormButton(
                            label: isSocialAuth
                                ? AppStrings.continueWithOasisNow
                                : AppStrings.signUp,
                            onPressed: () => _onPrimaryButtonPressed(
                              context.read<AuthFormCubit>(),
                            ),
                            useGradient: !isSocialAuth,
                          ),
                          SizedBox(height: context.h(AppDimensions.spacingSm)),
                          AuthBottomSection(
                            isSocialAuth: isSocialAuth,
                            errorMessage: errorMessage,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
