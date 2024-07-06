import 'package:authentication_screen/authentication/widgets/button_widget.dart';
import 'package:authentication_screen/authentication/widgets/country_code_drop_down.dart';
import 'package:authentication_screen/authentication/widgets/custom_icon_container.dart';
import 'package:authentication_screen/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/text_field_widget.dart';
import 'otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  bool hidePassword = true;

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
                  height: 120,
                ),
                const Text(
                  'Create Account',
                  style: TextStyleConstant.heading24TextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyleConstant.body16TextStyle,
                ),
                const SizedBox(
                  height: 74,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFieldWidget(
                    isObsecureText: false,
                    controller: emailController,
                    textInputType: TextInputType.emailAddress,
                    hintText: 'Email',
                    leadingIcon: Padding(
                      padding: const EdgeInsets.all(14),
                      child: SvgPicture.asset('assets/icons/email.svg'),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFieldWidget(
                    isObsecureText: hidePassword,
                    controller: passwordController,
                    hintText: 'Password',
                    leadingIcon: Padding(
                      padding: const EdgeInsets.all(14),
                      child: SvgPicture.asset('assets/icons/password_lock.svg'),
                    ),
                    trailingIcon: InkWell(
                      onTap: (){
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: SvgPicture.asset('assets/icons/hide_password.svg'),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFieldWidget(
                    isObsecureText: hidePassword,
                    controller: repeatPasswordController,
                    hintText: 'Repeat Password',
                    leadingIcon: Padding(
                      padding: const EdgeInsets.all(14),
                      child: SvgPicture.asset('assets/icons/password_lock.svg'),
                    ),
                    trailingIcon: InkWell(
                      onTap: (){
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: SvgPicture.asset('assets/icons/hide_password.svg'),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please repeat your password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFieldWidget(
                    isObsecureText: false,
                    controller: mobileController,
                    hintText: 'Mobile Number',
                    leadingIcon: const CountryCodeDropdown(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 68,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: ButtonWidget(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OTPScreen(),
                          ),
                        );
                      }
                    },
                    text: 'NEXT',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Or Continue With',
                  style: TextStyleConstant.body12TextStyle,
                ),
                const SizedBox(
                  height: 44,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: CustomIconContainer(
                        icon: SvgPicture.asset('assets/logo/google.svg'),
                        name: 'Google',
                      ),
                    ),
                    const SizedBox(width: 15),
                    Flexible(
                      child: CustomIconContainer(
                        icon: SvgPicture.asset('assets/logo/google.svg'),
                        name: 'Google',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
