import 'package:recast_designs_test/core/constants/app_strings.dart';

import '../models/text_field_config.dart';

final List<TextFieldConfig> authFormFieldSeedData = [
  const TextFieldConfig(
    id: AuthFormFieldId.email,
    label: AppStrings.email,
    isObscured: false,
  ),
  const TextFieldConfig(
    id: AuthFormFieldId.password,
    label: AppStrings.password,
    isObscured: true,
  ),
  const TextFieldConfig(
    id: AuthFormFieldId.rePassword,
    label: AppStrings.rePassword,
    isObscured: true,
  ),
];
