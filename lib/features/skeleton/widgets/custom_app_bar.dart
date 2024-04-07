import 'package:flutter/material.dart';
import 'package:test_ui/core/extensions/context_ext.dart';
import 'package:test_ui/core/resources/assets_m.dart';
import 'package:test_ui/core/resources/font_m.dart';
import 'package:test_ui/core/components/custom_bottom_sheet.dart';
import 'package:test_ui/features/user/model/user_model.dart';

import '../../../core/components/circle_image_widget.dart';
import '../../../core/components/custom_circle_border.dart';
import '../../../core/resources/colors_m.dart';
import '../../../core/resources/paddings_m.dart';
import '../../../core/resources/sizes.dart';
import '../../../core/resources/strings_m.dart';
import '../../../core/resources/styles_m.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: PaddingsM.bottomHori,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              color: ColorsManager.black.withOpacity(0.1),
              offset: const Offset(0, 4),
            ),
          ],
          color: ColorsManager.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircImageView(
                    story: user.story,
                    dot: user.dot,
                    url: user.image,
                    voidCallback: () {
                      CustomBottomSheet.show(context, BottomType.profile, user);
                    },
                  ),
                  Row(
                    children: [
                      Image.asset(
                        IcAssets.icHeartLoc,
                      ),
                      const SizedBox(
                        width: Sizes.s4,
                      ),
                      Text(
                        StringsManager.burda,
                        style: getSemiBoldStyle(
                            color: ColorsManager.black, fontSize: FontSize.s24),
                      ),
                    ],
                  ),
                  Container(
                    width: context.dynamicWitdh(0.075),
                    height: context.dynamicWitdh(0.075),
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorsManager.whiteOpacity,
                        ),
                        borderRadius: BorderRadius.circular(
                            context.dynamicWitdh(0.075) / 2),
                        image: const DecorationImage(
                            image: AssetImage(IcAssets.icNoti))),
                    child: CustomCirculBorder(
                      width: context.dynamicWitdh(0.1),
                      color: ColorsManager.orange,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: PaddingsM.all12Bottom16,
                decoration: BoxDecoration(
                    color: ColorsManager.whiteOpacity,
                    borderRadius: BorderRadius.circular(context.lowValue)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringsManager.gizliRejimiAktivlesdir,
                      style: getSemiBoldStyle(
                        color: ColorsManager.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                    Switch(
                      value: false,
                      onChanged: (value) {},
                      inactiveThumbColor: ColorsManager.white,
                      inactiveTrackColor: ColorsManager.border,
                      trackOutlineColor:
                          const MaterialStatePropertyAll(ColorsManager.border),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
