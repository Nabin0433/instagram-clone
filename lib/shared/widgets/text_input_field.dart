import 'package:flutter/material.dart';

class TextInputFeild extends StatelessWidget {
  final TextEditingController controller;
  final bool isPass;
  final String hint;
  final TextInputType type;
  const TextInputFeild(
      {Key? key,
      required this.controller,
      this.isPass = false,
      required this.hint,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller: controller,
      keyboardType: type,
      obscureText: isPass,
      decoration: InputDecoration(
        label: Text(hint),
        labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        // hintText: hint,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      ),
      style: const TextStyle(color: Colors.grey, fontSize: 18),
    );
  }
}
