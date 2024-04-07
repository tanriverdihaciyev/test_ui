import 'package:flutter/material.dart';
import 'package:test_ui/core/resources/styles_m.dart';

import '../../resources/colors_m.dart';
import '../../resources/font_m.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: const MaterialStatePropertyAll(
              ColorsManager.white,
            ),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                side: const BorderSide(color: ColorsManager.border, width: 2),
                borderRadius: BorderRadius.circular(8)))),
        child: Text(
          title,
          style:
              getBoldStyle(color: ColorsManager.black, fontSize: FontSize.s16),
        ));
  }
}
