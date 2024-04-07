import 'package:flutter/material.dart';
import 'package:test_ui/features/user/model/user_model.dart';

import '../extensions/context_ext.dart';
import '../resources/assets_m.dart';
import '../resources/colors_m.dart';
import '../resources/font_m.dart';
import '../resources/sizes.dart';
import '../resources/strings_m.dart';
import '../resources/styles_m.dart';
import 'buttons/custom_close_button.dart';
import 'buttons/orange_button.dart';
import 'buttons/red_button.dart';
import 'buttons/white_button.dart';
import 'circle_image_widget.dart';
import 'custom_snack_bar.dart';
import 'drag_handle.dart';
import 'modal_dialog.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key, required this.type, required this.user});
  final UserModel user;
  final BottomType type;
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
  static Future show(BuildContext context, BottomType type, user) {
    return showModalBottomSheet(
        backgroundColor: ColorsManager.white,
        isScrollControlled: true,
        shape: const OutlineInputBorder(
            gapPadding: 24,
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        context: context,
        builder: (context) => CustomBottomSheet(
              type: type,
              user: user,
            ));
  }
}

class _CustomBottomSheetState extends State<CustomBottomSheet>
    with CustomBottomSheetMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case BottomType.profile:
        return _column([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  StringsManager.profil,
                  style: getMediumStyle(
                      color: ColorsManager.black, fontSize: FontSize.s20),
                ),
              ),
              const CustomCloseButton(),
            ],
          ),
          CircImageView(
            witdh: context.dynamicWitdh(0.3),
            url: widget.user.image,
            dot: false,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${widget.user.fullName}, ${widget.user.age}",
                style: getSemiBoldStyle(
                    color: ColorsManager.black, fontSize: FontSize.s24),
              ),
              if (widget.user.boos) Image.asset(ImAssets.imBoos),
              if (widget.user.vip) Image.asset(ImAssets.imVip),
              if (widget.user.verified) Image.asset(ImAssets.imVerification),
            ],
          ),
          Text(
            widget.user.distance < 100
                ? StringsManager.yaxinliqda
                : "${widget.user.distance} metr",
            style: getMediumStyle(
                color: ColorsManager.grey, fontSize: FontSize.s18),
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
          Container(
            padding: context.paddingAllLow,
            decoration: BoxDecoration(
                color: ColorsManager.orangeLight,
                borderRadius:
                    BorderRadius.circular(context.dynamicWitdh(0.05))),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.favorite,
                  color: ColorsManager.red,
                ),
                const SizedBox(
                  width: Sizes.s4,
                ),
                Text(
                  widget.user.likes.toString(),
                  style: getMediumStyle(
                      color: ColorsManager.black,
                      fontFamily: FontConstants.euclidCircularA,
                      fontSize: FontSize.s18),
                )
              ],
            ),
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              StringsManager.bio,
              style: getMediumStyle(
                  color: ColorsManager.grey, fontSize: FontSize.s14),
            ),
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              widget.user.bio,
              style: getMediumStyle(
                  color: ColorsManager.headColor, fontSize: FontSize.s18),
            ),
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const Expanded(
                  child: OrangeButton(title: StringsManager.mesajGonder),
                ),
                MenuAnchor(
                  builder: (context, controller, child) => IconButton(
                    onPressed: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                    icon: const Icon(Icons.more_horiz),
                    tooltip: 'Show menu',
                  ),
                  menuChildren: [
                    MenuItemButton(
                      onPressed: () {
                        Navigator.pop(context);
                        CustomBottomSheet.show(
                            context, BottomType.noti, widget.user);
                      },
                      leadingIcon: Image.asset(IcAssets.icCloseNoti),
                      child: Text(
                        StringsManager.bildirisleriBagla,
                        style: getBoldStyle(
                            color: ColorsManager.black, fontSize: FontSize.s16),
                      ),
                    ),
                    MenuItemButton(
                      leadingIcon: Image.asset(IcAssets.icBlocked),
                      child: Text(
                        StringsManager.blokla,
                        style: getBoldStyle(
                            color: ColorsManager.black, fontSize: FontSize.s16),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        CustomBottomSheet.show(
                            context, BottomType.block, widget.user);
                      },
                    ),
                    MenuItemButton(
                      leadingIcon: Image.asset(IcAssets.icFlag),
                      child: Text(
                        StringsManager.sikayetEt,
                        style: getBoldStyle(
                            color: ColorsManager.orange,
                            fontSize: FontSize.s16),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        CustomBottomSheet.show(
                            context, BottomType.complaint, widget.user);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
        ]);
      case BottomType.noti:
        return ModalDialog(
          title: StringsManager.bildirisleriBaglaMesaji,
          buttonTitle: StringsManager.beliBagla,
          onPressed: () {
            Navigator.pop(context);
            CustomBottomSheet.show(context, BottomType.notiSnack, widget.user);
          },
        );
      case BottomType.notiSnack:
        return CustomSnackBar(
          mesage: StringsManager.bildirisBaglandi,
          action: () => Navigator.pop(context),
        );
      case BottomType.block:
        return ModalDialog(
          title: StringsManager.bloklamaMesaji,
          buttonTitle: StringsManager.beliBlokla,
          onPressed: () {
            Navigator.pop(context);
            CustomBottomSheet.show(context, BottomType.blockSnack, widget.user);
          },
        );
      case BottomType.blockSnack:
        return CustomSnackBar(
          mesage: StringsManager.bloklandi,
          action: () => Navigator.pop(context),
        );
      case BottomType.complaint:
        return _column([
          const Align(
              alignment: Alignment.centerLeft, child: CustomCloseButton()),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              StringsManager.sebebSecin,
              style: getMediumStyle(
                color: ColorsManager.headColor,
                fontSize: FontSize.s18,
              ),
            ),
          ),
          ...sebebler
              .map(
                (e) => Row(
                  children: [
                    Radio(
                      value: e,
                      groupValue: null,
                      onChanged: (value) {},
                    ),
                    Expanded(
                      child: Text(
                        e,
                        style: getMediumStyle(
                          color: ColorsManager.black,
                          fontSize: FontSize.s16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: RedButton(
                    title: StringsManager.gonder,
                    onPressed: () {
                      Navigator.pop(context);
                      CustomBottomSheet.show(
                          context, BottomType.complaintResult, widget.user);
                    },
                  ),
                ),
              ],
            ),
          )
        ]);
      case BottomType.complaintResult:
        return _column([
          Row(
            children: [
              const SizedBox(
                width: Sizes.s8,
              ),
              Text(
                StringsManager.sikayetEt,
                style: getMediumStyle(
                    color: ColorsManager.black, fontSize: FontSize.s20),
              ),
              const Spacer(),
              const CustomCloseButton(),
            ],
          ),
          Image.asset(ImAssets.imCircle),
          const SizedBox(
            height: Sizes.s8,
          ),
          Text(
            StringsManager.sikayetinGonderildi,
            style: getMediumStyle(
              color: ColorsManager.black,
              fontSize: FontSize.s24,
            ),
          ),
          const SizedBox(
            height: Sizes.s8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: WhiteButton(
                    title: StringsManager.bagla,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          )
        ]);
    }
  }
}

enum BottomType {
  profile,
  noti,
  notiSnack,
  block,
  blockSnack,
  complaint,
  complaintResult,
}

mixin CustomBottomSheetMixin on State<CustomBottomSheet> {
  List<String> sebebler = [
    StringsManager.sebebProfilFoto,
    StringsManager.sebebIstifadeciAdi,
    StringsManager.sebebMesajlar,
    StringsManager.sebebKonum,
    StringsManager.sebebTehqir,
    StringsManager.sebebFotoIstifade,
    StringsManager.sebebSpam,
    StringsManager.basqaSebeb,
  ];
  Widget _column(List<Widget> children) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [const DragHandle(), ...children]);
  }
}
