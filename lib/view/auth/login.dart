import 'package:ecommerce_getx/constance.dart';
import 'package:ecommerce_getx/core/view_model/auth_view_model.dart';
import 'package:ecommerce_getx/view/auth/signup.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:ecommerce_getx/view/widgets/custome_social_button.dart';
import 'package:ecommerce_getx/view/widgets/custome_text_form_filed.dart';
import 'package:ecommerce_getx/view/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Login extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Container(
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
                      children:  [
                      const  CustomText(
                          text: 'Welcome',
                          fontSize: 30,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(const SignUp());
                          },
                          child: const CustomText(
                            text: 'Sign Up',
                            color: primaryColor,
                            fontSize: 18,
                          ),

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
                        onSaved: (value) {
                          controller.email = value! ;
                        },
                        validator: (value) {
                          if (value == null) {
                            print("ERROR");
                          };
                        }),
                    CustomeTextFormFiled(
                      hint: '*******',
                      onSaved: (value) {
                        controller.password = value!;
                      },
                      validator: (v) {
                        if (v == null) {
                          print("ERROR");
                        }
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
                      onPressed: () {
                        _formKey.currentState?.save();

                        if (_formKey.currentState!.validate()) {
                          controller.signWithEmailAndPassword();
                        }
                      },
                    ),
                  ]),
                ),
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
              onPressed: () {
                controller.facebookSignInMethod();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomeSocialButton(
              lable: 'Sign In with Google',
              icon: 'google',
              onPressed: () {
                controller.googleSignInMethod();
              },
            )
          ],
        ),
      ),
    );
  }
}
