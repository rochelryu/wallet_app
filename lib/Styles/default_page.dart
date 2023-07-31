import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CartoonBoxTheme {
  static TextStyle title({Color textColor = whiteColor, double textSize = 24}) {
    return GoogleFonts.robotoMono(textStyle: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: FontWeight.bold,
    ));
  }

  static TextStyle subTitle({Color textColor = greyColor, double textSize = 14}) {
    return GoogleFonts.poppins(textStyle: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: FontWeight.w500
    ));
  }

  static TextStyle simpleText({Color textColor = whiteColor, double textSize = 14}) {
    return GoogleFonts.montserrat(textStyle: TextStyle(
      color: textColor,
      fontSize: textSize,
    ));
  }


  static ButtonStyle defaultStyleButton({Color textColor = whiteColor, double textSize = 14}){
    return ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 10),
      elevation: 4,
      shadowColor: whiteColor.withOpacity(.3)
    );
  }
}