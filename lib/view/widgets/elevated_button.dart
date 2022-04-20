import 'package:ecommerce_getx/constance.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomeElevatedButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const CustomeElevatedButton({Key? key, required this.label, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: raisedButtonStyle,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: CustomText(
            text: label,
            alignment: Alignment.center,
            fontSize: 20,
            color: Colors.white,
          ),
        ));
  }
}
