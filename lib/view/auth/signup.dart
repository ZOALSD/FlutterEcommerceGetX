import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:ecommerce_getx/view/widgets/custome_text_form_filed.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 4,
                    // offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: Column(
                children: [
                  const CustomText(
                    text: 'Sgin Up',
                    fontSize: 30,
                    mt: 20,
                  ),
                  CustomeTextFormFiled(
                      hint: 'name',
                      onSaved: (v) {},
                      validator: (v) {},
                      lable: 'name')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
