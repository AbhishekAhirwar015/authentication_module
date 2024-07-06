
import 'package:authentication_screen/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/text_style.dart';

class CustomIconContainer extends StatelessWidget {
  final Widget icon;
  final String name;

  const CustomIconContainer({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 20),
      decoration: BoxDecoration(
        color: ColorConstant.whiteColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorConstant.logoContainerShadowColor, width: 1),
        boxShadow:  [
          BoxShadow(
            color: ColorConstant.blackColor.withOpacity(0.05), // 0x0D000000 is the ARGB equivalent of #0000000D
            offset: const Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          icon,
          const SizedBox(height: 8),
          Text(
            name,
            style: TextStyleConstant.body12TextStyle,
          ),
        ],
      ),
    );
  }
}