import 'package:authentication_screen/constants/colors.dart';
import 'package:flutter/material.dart';

import 'authentication/screens/login_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: ColorConstant.whiteColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.primaryColor, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Border radius
            ),
          )
        )
      ),
      home: LoginScreen(),
    );
  }
}
