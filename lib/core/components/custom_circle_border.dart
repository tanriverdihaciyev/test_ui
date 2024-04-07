import 'package:flutter/material.dart';

import '../resources/colors_m.dart';

class CustomCirculBorder extends StatelessWidget {
  const CustomCirculBorder(
      {super.key, required this.width, this.color = ColorsManager.green});
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 3.5,
      height: width / 3.5,
      decoration: BoxDecoration(
        border: Border.all(
          width: width / 3.5 / 6,
          color: ColorsManager.white,
        ),
        borderRadius: BorderRadius.circular(width / 3.5 / 2),
        color: color,
      ),
    );
  }
}
