import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyleConstant{
  static const heading24TextStyle = TextStyle(
    color: ColorConstant.blackColor,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  static const body16TextStyle = TextStyle(
    color: ColorConstant.blackColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const body12TextStyle = TextStyle(
    color: ColorConstant.blackColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const body14TextStyle = TextStyle(
    color: ColorConstant.grayColorTextTwo,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final hintTextStyle = TextStyle(
    color: ColorConstant.blackColor.withOpacity(0.3),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const buttonTextStyle  =  TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: ColorConstant.whiteColor, // Assuming ColorConstant.whiteColor is white
  );

  static const heading18PrimaryColorTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: ColorConstant.primaryColor

  );

}