import 'package:flutter/material.dart';

class ColorsManager {
  static const Color white = Color(0xffffffff);
  static const Color whiteOpacity = Color(0xfff7f7f7);
  static const Color green = Color(0xff40B436);
  static const Color orange = Color(0xffEE6A57);
  static const Color grey = Color(0xff919191);
  static const Color black = Color(0xff2B2B2B);
  static const Color orangeLight = Color(0xffFDEAE8);
  static const Color red = Color(0xffEE2828);
  static const Color linear1 = Color(0xff4A4A4A);
  static const Color linear2 = Color(0xff2B2B2B);
  static const Color borderLinear1 = Color(0xffE8BC1D);
  static const Color borderLinear2 = Color(0xffFF719B);
  static const LinearGradient borderGradiant = LinearGradient(
    colors: [
      borderLinear1,
      borderLinear2,
    ],
  );
  static const LinearGradient linearGradient = LinearGradient(
    colors: [
      linear1,
      linear2,
    ],
  );
  static const Color border = Color(0xffC4C4C4);
  static const Color redText = Color(0xffF0B1A8);
  static const Color headColor = Color(0xff5E5E5E);
}
