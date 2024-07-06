import 'package:authentication_screen/constants/colors.dart';
import 'package:authentication_screen/constants/text_style.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final double borderRadius;
  final bool? shadow;
  final Color borderColor;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;
  final int? maxLength;

  const TextFieldWidget(
      {super.key,
      required this.hintText,
      required this.controller,
      this.leadingIcon,
      this.trailingIcon,
      this.borderRadius = 14.0,
      this.shadow,
      this.borderColor = ColorConstant.grayColorBorder,
      this.validator,
      this.maxLength,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: shadow == true
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                )
              ]
            : [],
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          counterText: '',
          prefixIcon: leadingIcon,
          suffixIcon: trailingIcon,
          hintText: hintText,
          hintStyle: TextStyleConstant.hintTextStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        validator: validator,
        keyboardType: textInputType,
        maxLength: maxLength,

      ),
    );
  }
}
