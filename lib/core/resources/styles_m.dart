import 'package:flutter/material.dart';
import 'package:test_ui/core/resources/font_m.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle getBlackStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.black,
    color,
  );
}

TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.bold,
    color,
  );
}

TextStyle getExtraBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.extraBold,
    color,
  );
}

TextStyle getExtraLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.extraLight,
    color,
  );
}

TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.light,
    color,
  );
}

TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String? fontFamily,
}) {
  return _getTextStyle(
    fontSize,
    fontFamily ?? FontConstants.poppins,
    FontWeightManager.medium,
    color,
  );
}

TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.regular,
    color,
  );
}

TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.semiBold,
    color,
  );
}

TextStyle getThinStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.poppins,
    FontWeightManager.thin,
    color,
  );
}

BoxShadow get appShadow => BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 16,
      offset: const Offset(0, 4),
    );
