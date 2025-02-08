import 'package:flutter/material.dart';

const decorationTextfield = InputDecoration(
  
  hintStyle: TextStyle(color: Color.fromARGB(255, 163, 158, 158)), // Définir la couleur ici
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),
  // fillColor: Colors.red,
  filled: true,
  contentPadding: EdgeInsets.all(8),
);
