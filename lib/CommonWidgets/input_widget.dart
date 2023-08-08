
import 'package:flutter/material.dart';

import '../Styles/colors.dart';

Widget inputWidget({
  required TextEditingController textEditingController,
  bool elevation = false,
  TextInputType textInputType = TextInputType.text,
  Function(String)? onChanged,
  Widget? prefixIcon,
  String? hintText,
  bool obscureText = false,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: Card(
      color: Colors.transparent,
      elevation: elevation ? 4.0 : 0.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0)
      ),
      child: Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(
                width: 1.0,
                color: primaryColor),
            borderRadius: BorderRadius.circular(50.0)),
        child: TextField(
          controller: textEditingController,
          style: const TextStyle(
              color: orangeColor, fontWeight: FontWeight.w300),
          cursorColor: primaryOpaqueColor,
          keyboardType: textInputType,
          onChanged: onChanged,
          obscureText: obscureText,
          obscuringCharacter: '*',
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                color: orangeColor,
              )),
        ),
      ),
    ),
  );
}