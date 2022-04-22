import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Home extends GetWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: TextButton(onPressed: (){},
        child: Text("LogOut"),),
      ),
    );
  }
}
