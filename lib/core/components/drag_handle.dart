import 'package:flutter/material.dart';

import '../resources/colors_m.dart';

class DragHandle extends StatelessWidget {
  const DragHandle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
              child: Wrap(children: <Widget>[
            Container(
                width: 36,
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                height: 5,
                decoration: const BoxDecoration(
                  color: ColorsManager.grey,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(2.5)),
                )),
          ])),
        ]);
  }
}
