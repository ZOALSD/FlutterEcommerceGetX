import 'package:ecommerce_getx/constance.dart';
import 'package:ecommerce_getx/view/auth/login.dart';
import 'package:ecommerce_getx/view/auth/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.light()).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(style: raisedButtonStyle),
      ),
      home: Scaffold(
        body: SignUp(),
      ),
    );
  }
}
