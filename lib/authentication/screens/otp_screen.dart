import 'package:authentication_screen/authentication/widgets/button_widget.dart';
import 'package:authentication_screen/constants/colors.dart';
import 'package:authentication_screen/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String? otp ;

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
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor:
                        ColorConstant.backgroundColorBlue.withOpacity(0.1),
                    child: SvgPicture.asset("assets/icons/back.svg"),
                  ),
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
            Pinput(
              length: 4,
              onCompleted: (value) {
                setState(() {
                  otp = value;
                });
              },
              defaultPinTheme: PinTheme(
                textStyle: TextStyleConstant.body16TextStyle.copyWith(fontWeight: FontWeight.w700),
                height: 50,
                width: 50,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.blackColor.withOpacity(0.12),
                      blurRadius: 4,
                    ),

                  ]
                )
              ),
            ),

            const SizedBox(
              height: 34,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ButtonWidget(
                onPressed: () {
                },
                text: 'VERIFY',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
