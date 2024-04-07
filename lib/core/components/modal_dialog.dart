import 'package:flutter/material.dart';
import 'package:test_ui/core/resources/colors_m.dart';
import 'package:test_ui/core/resources/font_m.dart';
import 'package:test_ui/core/resources/sizes.dart';
import 'package:test_ui/core/resources/styles_m.dart';

import '../resources/paddings_m.dart';
import '../resources/strings_m.dart';
import 'buttons/orange_button.dart';
import 'buttons/white_button.dart';

class ModalDialog extends StatelessWidget {
  const ModalDialog({
    super.key,
    this.onPressed,
    required this.title,
    required this.buttonTitle,
  });
  final VoidCallback? onPressed;
  final String title;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingsM.all16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: getMediumStyle(
                color: ColorsManager.black, fontSize: FontSize.s28),
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: WhiteButton(
                  title: StringsManager.legvEt,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 10,
                child: OrangeButton(
                  title: buttonTitle,
                  onPressed: onPressed,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
