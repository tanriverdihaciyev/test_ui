import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/home.dart';
import '../../../core/components/custom_bottom_sheet.dart';
import '../../user/model/user_model.dart';
import '../../user/state/user_provider.dart';

mixin HomeMixin on State<Home> {
  late List<UserModel> users;
  late UserModel user;
  init() {
    users = context.watch<UserProvider>().users;
    user = context.watch<UserProvider>().activeUser;
  }

  Future<void> showCustomBottomSheet(BottomType type) async {
    await CustomBottomSheet.show(context, type, user);
  }
}
