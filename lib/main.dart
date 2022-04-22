import 'package:ecommerce_getx/constance.dart';
import 'package:ecommerce_getx/helper/binding.dart';
import 'package:ecommerce_getx/view/control_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.light()).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(style: raisedButtonStyle),
      ),
      home: Scaffold(
        body: ControlView(),
      ),
    );
  }
}
