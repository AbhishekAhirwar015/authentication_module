import 'package:authentication_screen/constants/colors.dart';
import 'package:authentication_screen/constants/text_style.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
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
  final bool isObsecureText;

  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.leadingIcon,
    this.trailingIcon,
    this.borderRadius = 14.0,
    this.shadow,
    this.borderColor = ColorConstant.grayColorBorder,
    this.validator,
    this.maxLength,
    this.textInputType,
    required this.isObsecureText,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: widget.shadow == true
            ? [
                BoxShadow(
                  color: ColorConstant.blackColor.withOpacity(0.12),
                  spreadRadius: 0,
                  blurRadius: 8,
                  offset: const Offset(0, 0),
                )
              ]
            : [],
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isObsecureText,
        decoration: InputDecoration(
          counterText: '',
          prefixIcon: widget.leadingIcon,
          suffixIcon: widget.trailingIcon,
          hintText: widget.hintText,
          hintStyle: TextStyleConstant.hintTextStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: widget.borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: widget.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: widget.borderColor),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        validator: widget.validator,
        keyboardType: widget.textInputType,
        maxLength: widget.maxLength,
      ),
    );
  }
}
