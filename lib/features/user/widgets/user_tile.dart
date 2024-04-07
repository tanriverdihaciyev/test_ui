import 'package:flutter/material.dart';
import 'package:test_ui/core/components/circle_image_widget.dart';
import 'package:test_ui/core/components/custom_bottom_sheet.dart';
import 'package:test_ui/core/extensions/context_ext.dart';

import '../../../core/resources/assets_m.dart';
import '../../../core/resources/colors_m.dart';
import '../../../core/resources/font_m.dart';
import '../../../core/resources/sizes.dart';
import '../../../core/resources/strings_m.dart';
import '../../../core/resources/styles_m.dart';
import '../model/user_model.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.userModel,
  });
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.dynamicHeight(0.1),
      height: context.dynamicHeight(0.1),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(context.lowValue),
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: ColorsManager.black.withOpacity(0.1),
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: row(context),
    );
  }

  Row row(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: Sizes.s8,
        ),
        CircImageView(
          dot: userModel.dot,
          story: userModel.story,
          url: userModel.image,
          voidCallback: () {
            CustomBottomSheet.show(context, BottomType.profile, userModel);
          },
        ),
        const SizedBox(
          width: Sizes.s8,
        ),
        titleSubTitle(),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Image.asset(IcAssets.icMesage),
        )
      ],
    );
  }

  Column titleSubTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${userModel.fullName}, ${userModel.age}",
              style: getSemiBoldStyle(
                  color: ColorsManager.black, fontSize: FontSize.s18),
            ),
            if (userModel.vip) Image.asset(ImAssets.imVip),
            if (userModel.verified) Image.asset(ImAssets.imVerification),
          ],
        ),
        Text(
          userModel.distance < 100
              ? "Yaxinliqda"
              : "${userModel.distance} ${StringsManager.metr}",
          style:
              getMediumStyle(color: ColorsManager.grey, fontSize: FontSize.s14),
        ),
      ],
    );
  }
}
