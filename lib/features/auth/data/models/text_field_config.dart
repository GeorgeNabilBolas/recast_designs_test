class TextFieldConfig {
  final AuthFormFieldId id;
  final String label;
  final String? hintText;
  final bool isObscured;

  const TextFieldConfig({
    required this.id,
    required this.label,
    this.hintText,
    required this.isObscured,
  });
}

enum AuthFormFieldId { email, password, rePassword }
