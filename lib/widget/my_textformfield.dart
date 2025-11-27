import 'package:flutter/material.dart';

class MyTextformfield extends StatelessWidget {
  const MyTextformfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.errorMessage,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null && value!.isEmpty) {
          return errorMessage;
        }
        return null;
      },
    );
  }
}
