import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_ui/core/resources/theme_m.dart';
import 'package:test_ui/features/skeleton/pages/skeleton.dart';
import 'package:test_ui/features/user/state/user_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: getAppTheme(),
        debugShowCheckedModeBanner: false,
        home: const Skeleton(),
      ),
    );
  }
}
