import 'package:flutter/material.dart';
import 'package:test_ui/core/resources/assets_m.dart';
import 'package:test_ui/core/resources/colors_m.dart';
import 'package:test_ui/core/resources/strings_m.dart';
import 'package:test_ui/features/home/pages/home.dart';
import '../widgets/custom_nav_bar_item.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Home(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 16,
            offset: const Offset(0, -4),
            color: ColorsManager.black.withOpacity(0.1))
      ]),
      child: const BottomAppBar(
        color: ColorsManager.white,
        shadowColor: ColorsManager.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomNavBarItem(
              ic: IcAssets.icHome,
              text: StringsManager.esas,
              isSelected: true,
            ),
            CustomNavBarItem(
              ic: IcAssets.icSearch,
              text: StringsManager.axtar,
              isSelected: false,
            ),
            CustomNavBarItem(
              ic: IcAssets.icAdd,
              text: StringsManager.story,
              isSelected: false,
            ),
            CustomNavBarItem(
              ic: IcAssets.icFire,
              text: StringsManager.kesfEt,
              isSelected: false,
            ),
            CustomNavBarItem(
              ic: IcAssets.icComments,
              text: StringsManager.cat,
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }
}
