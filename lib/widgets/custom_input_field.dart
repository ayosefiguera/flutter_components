import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hint;
  final String? label;
  final String? helper;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? initialValue;
  final TextInputType? textInput;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hint,
    this.label,
    this.helper,
    this.icon,
    this.suffixIcon,
    this.initialValue,
    this.textInput,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: initialValue,
      textCapitalization: TextCapitalization.words,
      keyboardType: textInput,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (String? value) =>
          value!.length < 3 ? 'Incomplet Identify' : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        helperText: helper,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
