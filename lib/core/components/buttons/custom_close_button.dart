import 'package:flutter/material.dart';

import '../../resources/colors_m.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const CircleAvatar(
          backgroundColor: ColorsManager.whiteOpacity,
          child: Icon(
            Icons.close_sharp,
            color: ColorsManager.grey,
          )),
      onPressed: () => Navigator.pop(context),
      color: ColorsManager.grey,
    );
  }
}
