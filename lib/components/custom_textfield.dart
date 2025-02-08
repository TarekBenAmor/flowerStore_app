import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType textIputTypeee;
  final bool isPassword;
  final String hintTexttt;

  const MyTextField({super.key,
    required this.textIputTypeee,
    required this.isPassword,
    required this.hintTexttt,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textIputTypeee,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintTexttt,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
