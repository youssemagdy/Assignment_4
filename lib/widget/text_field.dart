import 'package:flutter/material.dart';

class TextFiled1 extends StatelessWidget
{
  const TextFiled1({
    Key? key,
    this.hintText,
    this.suffixIcon,
    required this.controller,
    required this.validator
  }) : super(key: key);
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function (String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          color: Colors.grey[500],
          fontSize: 15
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            width: 2.5,
            color: Colors.blue,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            width: 2.5,
          ),
        ),
      ),
    );
  }
}
