import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomeSocialButton extends StatelessWidget {
  final String lable;
  final String icon;
  final void Function()? onPressed;

  const CustomeSocialButton(
      {Key? key, required this.lable, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade200)),
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset('assets/social_icons/' + icon + '.png', height: 40),
            const SizedBox(
              width: 70,
            ),
            CustomText(
              text: lable,
              fontSize: 16,
            ),
          ],
        ));
  }
}
