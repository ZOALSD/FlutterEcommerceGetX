import 'package:ecommerce_getx/core/view_model/auth_view_model.dart';
import 'package:ecommerce_getx/view/auth/login.dart';
import 'package:ecommerce_getx/view/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if ((Get.find<AuthViewModel>().user != null)) {
        return const Home();
      } else {
        return Login();
      }
    });
  }
}
