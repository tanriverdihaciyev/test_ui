import 'package:flutter/material.dart';

import '../../resources/colors_m.dart';
import '../../resources/font_m.dart';
import '../../resources/styles_m.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            ColorsManager.red,
          ),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
      onPressed: onPressed,
      child: Text(
        title,
        style: getBoldStyle(
          color: ColorsManager.white,
          fontSize: FontSize.s16,
        ),
      ),
    );
  }
}
