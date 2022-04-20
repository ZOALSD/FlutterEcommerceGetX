import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final double mt;

  const CustomText(
      {Key? key,
      required this.text,
      this.fontSize = 18,
      this.color = Colors.black,
      this.alignment = Alignment.topLeft,
      this.mt = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: mt,
        ),
        Container(
          alignment: alignment,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
