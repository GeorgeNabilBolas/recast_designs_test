import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/utils/helpers/validation_helper.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import 'package:recast_designs_test/features/auth/data/models/text_field_config.dart';
import 'package:recast_designs_test/core/constants/app_dimensions.dart';

import '../../data/seed/text_field_config_seed_data.dart';
import 'auth_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    this.errorMsg,
  });

  final String? errorMsg;

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  String? validate() {
    return ValidationHelper.validateEmail(_emailCtrl.text) ??
        ValidationHelper.validatePassword(_passCtrl.text) ??
        ValidationHelper.validateConfirmPassword(
          _passCtrl.text,
          _confirmCtrl.text,
        );
  }

  TextEditingController _controllerFor(AuthFormFieldId id) {
    return switch (id) {
      AuthFormFieldId.email => _emailCtrl,
      AuthFormFieldId.password => _passCtrl,
      AuthFormFieldId.rePassword => _confirmCtrl,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: context.h(AppDimensions.spacingSm),
      children: [
        ...authFormFieldSeedData.map(
          (config) => AuthTextField(
            config: config,
            controller: _controllerFor(config.id),
          ),
        ),
      ],
    );
  }
}
