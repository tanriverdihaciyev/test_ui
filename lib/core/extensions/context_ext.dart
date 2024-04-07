import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  double dynamicHeight(val) => MediaQuery.of(this).size.height * val;
  double dynamicWitdh(val) => MediaQuery.of(this).size.width * val;
}

extension SizesExt on BuildContext {
  double get lowValue => dynamicHeight(0.01);
  double get mediumValue => dynamicHeight(0.03);
  double get highValue => dynamicHeight(0.05);
}

extension PaddingExt on BuildContext {
  EdgeInsets get paddingAllLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingAllMedium => EdgeInsets.all(mediumValue);
}
