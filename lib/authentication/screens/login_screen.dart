import 'package:authentication_screen/authentication/screens/otp_screen.dart';
import 'package:authentication_screen/authentication/screens/sign_up_screen.dart';
import 'package:authentication_screen/authentication/widgets/button_widget.dart';
import 'package:authentication_screen/authentication/widgets/custom_icon_container.dart';
import 'package:authentication_screen/constants/colors.dart';
import 'package:authentication_screen/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number';
    }
    return null;
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OTPScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 52,
                ),
                Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("assets/icons/close.svg"),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SvgPicture.asset('assets/logo/logo.svg'),
                const SizedBox(
                  height: 44,
                ),
                const Text(
                  'Welcome Back!',
                  style: TextStyleConstant.heading24TextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Login to Continue',
                  style: TextStyleConstant.body16TextStyle,
                ),
                const SizedBox(
                  height: 37,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFieldWidget(
                    controller: numberController,
                    hintText: 'Phone Number',
                    leadingIcon: Padding(
                      padding: const EdgeInsets.all(14),
                      child: SvgPicture.asset('assets/icons/mobile.svg'),
                    ),
                    validator: validatePhoneNumber,
                    maxLength: 10,
                    textInputType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: ButtonWidget(
                    onPressed: _submit,
                    text: 'GET OTP',
                  ),
                ),
                const SizedBox(
                  height: 92,
                ),
                const Text(
                  'Or Continue With',
                  style: TextStyleConstant.body12TextStyle,
                ),
                const SizedBox(
                  height: 44,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: CustomIconContainer(
                          icon: SvgPicture.asset('assets/logo/google.svg'),
                          name: 'Google',
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        child: CustomIconContainer(
                          icon: Image.asset(
                            'assets/logo/facebook.png',
                            height: 20,
                            width: 20,
                          ),
                          name: 'Facebook',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyleConstant.body12TextStyle
                            .copyWith(color: ColorConstant.grayColorTextTwo),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyleConstant
                              .heading18PrimaryColorTextStyle
                              .copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: ColorConstant.primaryColor),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
