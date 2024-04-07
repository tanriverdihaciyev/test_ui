import 'package:flutter/material.dart';

import '../../../core/resources/paddings_m.dart';
import '../../skeleton/widgets/custom_app_bar.dart';
import '../../user/widgets/user_tile.dart';
import '../widgets/home_mixin.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with HomeMixin {
  @override
  Widget build(BuildContext context) {
    init();
    return Column(
      children: [
        Expanded(
          child: CustomAppBar(user: user),
        ),
        Expanded(
          flex: 3,
          child: _listUsersView(),
        ),
      ],
    );
  }

  ListView _listUsersView() {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      padding: PaddingsM.topHori,
      itemCount: users.length,
      itemBuilder: (context, index) => UserTile(userModel: users[index]),
    );
  }
}
