import 'package:flutter/material.dart';
import 'package:test_ui/core/extensions/context_ext.dart';

import '../resources/colors_m.dart';
import '../resources/font_m.dart';
import '../resources/paddings_m.dart';
import '../resources/strings_m.dart';
import '../resources/styles_m.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({
    super.key,
    required this.mesage,
    required this.action,
  });
  final String mesage;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingsM.ver6Hor12,
      margin: context.paddingAllLow,
      decoration: BoxDecoration(
          color: ColorsManager.black,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [appShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesage,
            style: getSemiBoldStyle(
              color: ColorsManager.white,
              fontSize: FontSize.s16,
            ),
          ),
          TextButton(
            onPressed: action,
            child: Text(
              StringsManager.legvEt,
              style: getMediumStyle(
                  color: ColorsManager.orange, fontSize: FontSize.s16),
            ),
          ),
        ],
      ),
    );
  }
}
