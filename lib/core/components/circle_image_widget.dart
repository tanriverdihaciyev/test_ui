import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:test_ui/core/extensions/context_ext.dart';

import '../resources/assets_m.dart';
import '../resources/colors_m.dart';
import 'custom_circle_border.dart';

class CircImageView extends StatelessWidget {
  const CircImageView(
      {super.key,
      this.url,
      this.dot = true,
      this.story = false,
      this.voidCallback,
      this.witdh});
  final String? url;
  final bool dot;
  final bool story;
  final VoidCallback? voidCallback;
  final double? witdh;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        width: witdh ?? context.dynamicWitdh(0.1),
        height: witdh ?? context.dynamicWitdh(0.1),
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          border: story
              ? GradientBoxBorder(
                  gradient: ColorsManager.borderGradiant,
                  width: (witdh ?? context.dynamicWitdh(0.1)) * 0.05)
              : Border.all(
                  width: 1,
                  color: ColorsManager.whiteOpacity,
                ),
          borderRadius:
              BorderRadius.circular((witdh ?? context.dynamicWitdh(0.1)) / 2),
          image: DecorationImage(
            image: url != null
                ? NetworkImage(url!)
                : const AssetImage(ImAssets.imEmptyImage) as ImageProvider,
          ),
        ),
        child: dot
            ? CustomCirculBorder(width: witdh ?? context.dynamicWitdh(0.1))
            : null,
      ),
    );
  }
}
