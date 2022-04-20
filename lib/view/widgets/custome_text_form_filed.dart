import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomeTextFormFiled extends StatelessWidget {
  final String hint;
  final String lable;
  final Color hintColor;
  final Color fillColor;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  final double mt;

  const CustomeTextFormFiled({
    Key? key,
    required this.hint,
    this.hintColor = Colors.grey,
    this.fillColor = Colors.black,
    required this.onSaved,
    required this.validator,
    required this.lable,
    this.mt = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          SizedBox(
            height: mt,
          ),
          CustomText(text: lable),
          TextFormField(
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: hintColor),
                fillColor: fillColor),
          )
        ],
      ),
    );
  }
}
