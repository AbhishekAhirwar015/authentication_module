import 'package:authentication_screen/authentication/widgets/button_widget.dart';
import 'package:authentication_screen/constants/colors.dart';
import 'package:authentication_screen/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController inputField1 = TextEditingController();
  TextEditingController inputField2 = TextEditingController();
  TextEditingController inputField3 = TextEditingController();
  TextEditingController inputField4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 52,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      ColorConstant.backgroundColorBlue.withOpacity(0.1),
                  child: SvgPicture.asset("assets/icons/back.svg"),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'OTP Verification',
              style: TextStyleConstant.heading24TextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Enter the verification code we just sent on your email address.',
              textAlign: TextAlign.center,
              style: TextStyleConstant.body14TextStyle,
            ),
            const SizedBox(
              height: 34,
            ),
            OtpTextField(
              showFieldAsBox: true,
              numberOfFields: 4,
              autoFocus: false,
              fillColor: ColorConstant.whiteColor,
              filled: true,
              borderRadius: BorderRadius.circular(10),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ButtonWidget(
                onPressed: () {},
                text: 'VERIFY',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
