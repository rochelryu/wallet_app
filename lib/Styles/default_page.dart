import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class MonGayTheme {
  static TextStyle title({Color textColor = whiteColor, double textSize = 24, TextDecoration textDecoration = TextDecoration.none}) {
    return GoogleFonts.robotoMono(textStyle: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: FontWeight.bold,
        decoration: textDecoration,
        decorationColor:textColor,
        decorationThickness: 1.0
    ));
  }

  static TextStyle subTitle({Color textColor = greyColor, double textSize = 14, TextDecoration textDecoration = TextDecoration.none}) {
    return GoogleFonts.poppins(textStyle: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: FontWeight.w500,
      decoration: textDecoration,
      decorationColor:textColor,
      decorationThickness: 1.0
    ));
  }

  static TextStyle simpleText({Color textColor = whiteColor, double textSize = 14}) {
    return GoogleFonts.montserrat(textStyle: TextStyle(
      color: textColor,
      fontSize: textSize,
    ));
  }


  static ButtonStyle defaultStyleButton({Color buttonColor = whiteColor, double elevation = 4}){
    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      elevation: elevation,
      shadowColor: buttonColor.withOpacity(.3),
      backgroundColor: buttonColor,
    );
  }
}