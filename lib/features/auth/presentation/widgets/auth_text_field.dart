import 'package:flutter/material.dart';
import 'package:recast_designs_test/core/constants/app_colors.dart';
import 'package:recast_designs_test/core/constants/app_text_styles.dart';
import 'package:recast_designs_test/core/utils/responsive/responsive.dart';
import '../../data/models/text_field_config.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.config,
    required this.controller,
    this.validator,
  });

  final TextFieldConfig config;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool _obscured;

  @override
  void initState() {
    super.initState();
    _obscured = widget.config.isObscured;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.beige,

      controller: widget.controller,
      obscureText: _obscured,
      validator: widget.validator,
      keyboardType: widget.config.id == AuthFormFieldId.email
          ? TextInputType.emailAddress
          : TextInputType.text,
      style: const TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: context.w(16.0),
          vertical: context.h(12.0),
        ),
        labelText: widget.config.label,
        labelStyle: AppTextStyles.style14W700White,
        filled: true,
        fillColor: AppColors.grey850,
        border: customBorder(context, color: AppColors.grey700),
        enabledBorder: customBorder(context, color: AppColors.grey700),
        focusedBorder: customBorder(context, color: AppColors.beige),
        errorBorder: customBorder(context, color: AppColors.errorRed),
        focusedErrorBorder: customBorder(context, color: AppColors.errorRed),
        errorStyle: const TextStyle(height: 0, fontSize: 0),
        suffixIcon: widget.config.isObscured ? _obscuredIcon(context) : null,
      ),
    );
  }

  OutlineInputBorder customBorder(
    BuildContext context, {
    required Color color,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(context.w(12)),
      borderSide: BorderSide(color: color),
    );
  }

  IconButton _obscuredIcon(BuildContext context) {
    return IconButton(
      icon: Container(
        padding: EdgeInsets.all(context.w(6)),
        decoration: BoxDecoration(
          color: AppColors.grey300.withValues(alpha: 0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(
          _obscured
              ? Icons.visibility_off_outlined
              : Icons.remove_red_eye_outlined,
          color: AppColors.white.withValues(alpha: 0.3),
        ),
      ),
      onPressed: () {
        setState(() {
          _obscured = !_obscured;
        });
      },
    );
  }
}
