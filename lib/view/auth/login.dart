import 'package:ecommerce_getx/constance.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:ecommerce_getx/view/widgets/custome_social_button.dart';
import 'package:ecommerce_getx/view/widgets/custome_text_form_filed.dart';
import 'package:ecommerce_getx/view/widgets/elevated_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: ListView(
          children: [
            Container(
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
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomText(
                        text: 'Welcome',
                        fontSize: 30,
                      ),
                      CustomText(
                        text: 'Sign Up',
                        color: primaryColor,
                        fontSize: 18,
                      )
                    ],
                  ),
                  const CustomText(
                    text: 'Sign in to Continue',
                    mt: 10,
                    color: Colors.grey,
                  ),
                  CustomeTextFormFiled(
                      mt: 30,
                      lable: 'Email',
                      hint: 'iamdavid@gmail.com',
                      onSaved: (value) {},
                      validator: (value) {
                        return null;
                      }),
                  CustomeTextFormFiled(
                    hint: '*******',
                    onSaved: (v) {},
                    validator: (v) {
                      return null;
                    },
                    lable: 'Password',
                    mt: 25,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'Forgot Password ?',
                    alignment: Alignment.topRight,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomeElevatedButton(
                    label: 'SIGN IN',
                    onPressed: () {},
                  ),
                ]),
              ),
            ),
            const CustomText(
              mt: 10,
              alignment: Alignment.center,
              text: '- OR -',
              color: Colors.grey,
              fontSize: 18,
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            CustomeSocialButton(
              lable: 'Sign In with Facebook',
              icon: 'facebook',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomeSocialButton(
              lable: 'Sign In with Google',
              icon: 'google',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
