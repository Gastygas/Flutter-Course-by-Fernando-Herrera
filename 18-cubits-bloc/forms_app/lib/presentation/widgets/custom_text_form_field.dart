import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String? hint;
  final String? errorMessage;
  final bool obscure;
  final Function(String)? onChanged;
  final String? Function(String?)? validatior;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.hint,
    this.errorMessage,
    this.obscure = false,
    this.onChanged,
    this.validatior,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      // borderSide: BorderSide(color: Colors.purple)
    );

    return TextFormField(
      onChanged: onChanged,
      // validator: (value) {
      //   if (value == null) return 'Field is required';
      //   if (value.isEmpty) return 'Field is required';

      //   return null;
      // },
      validator: validatior,
      obscureText: obscure,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),

        isDense: true,
        label: Text(label),
        hintText: hint,
        focusColor: colors.primary,
        errorText: errorMessage,
        // prefixIcon: Icon(Icons.supervised_user_circle_outlined, color: colors.primary,),
        // suffixIcon: Icon(Icons.verified_user_outlined),
      ),
    );
  }
}
