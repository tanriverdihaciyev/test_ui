import 'package:flutter/material.dart';
import 'package:test_ui/core/resources/sizes.dart';
import 'package:test_ui/core/resources/styles_m.dart';

import '../../../core/resources/colors_m.dart';

class CustomNavBarItem extends StatelessWidget {
  const CustomNavBarItem({
    super.key,
    required this.isSelected,
    required this.ic,
    required this.text,
  });

  final bool isSelected;
  final String ic;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          ic,
          color: isSelected ? ColorsManager.orange : ColorsManager.grey,
        ),
        const SizedBox(
          width: Sizes.s8,
        ),
        Text(
          text,
          style: getSemiBoldStyle(
            color: isSelected ? ColorsManager.orange : ColorsManager.grey,
          ),
        ),
      ],
    );
  }
}
