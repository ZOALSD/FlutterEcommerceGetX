import 'package:flutter/material.dart';

const primaryColor = Color.fromRGBO(0, 197, 105, 1);
const inputTextColor = Colors.white;
const primaryTextColor = Colors.black;
const seconderTextColor = Color.fromARGB(255, 245, 245, 245);

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  // onPrimary: Colors.white,
  primary: primaryColor,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);
