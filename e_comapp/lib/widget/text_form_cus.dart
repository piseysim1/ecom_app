import 'package:flutter/material.dart';

class TextFormCus extends StatelessWidget {
  const TextFormCus({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon, required this.borderRadius,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        hintText: hintText,

        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
