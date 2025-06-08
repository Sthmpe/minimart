import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/navigation_menu.dart';
import 'package:minimart/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: MiniMartAppTheme.lightTheme,
        home: NavigationMenu(),
        debugShowCheckedModeBanner: false,
      );
  }
}