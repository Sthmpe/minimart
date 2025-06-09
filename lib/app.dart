import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:minimart/bloc/cart_bloc/cart_bloc.dart';
import 'package:minimart/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:minimart/navigation_menu.dart';
import 'package:minimart/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
       providers: [
        BlocProvider(create: (_) => NavigationBloc()),
        BlocProvider(create: (_) => CartBloc()),
      ],
      child: GetMaterialApp(
          themeMode: ThemeMode.system,
          theme: MiniMartAppTheme.lightTheme,
          home: NavigationMenu(),
          debugShowCheckedModeBanner: false,
        ),
    );
  }
}