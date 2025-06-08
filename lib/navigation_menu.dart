import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:minimart/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:minimart/bloc/navigation_bloc/navigation_event.dart';
import 'package:minimart/bloc/navigation_bloc/navigation_state.dart';
import 'package:minimart/screens/home_page.dart';
import 'package:minimart/util/constants/colors.dart';
import 'package:minimart/widgets/navigation_item.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  final screens = [
    HomePage(),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              //backgroundColor: MiniMartAppColors.white,
              bottomNavigationBar: SafeArea(
                child: NavigationBarTheme(
                  data: NavigationBarThemeData(
                    labelTextStyle: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return TextStyle(
                          color: MiniMartAppColors.primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 16 / 12, // line-height ÷ font-size → 1.33
                          letterSpacing: 0.5,
                        );
                      }
                      return const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: MiniMartAppColors.onSurfaceVariant,
                          fontSize: 12,
                          height: 16 / 12, // line-height ÷ font-size → 1.33
                          letterSpacing: 0.5,
                      );
                    }),
                  ),
                  child: NavigationBar(
                    //height: 90,
                    backgroundColor: MiniMartAppColors.white,
                    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
                    indicatorColor: Colors.transparent,
                    selectedIndex: state.selectedIndex,
                    onDestinationSelected:
                        (index) => context.read<NavigationBloc>().add(
                          NavigationTabChanged(index),
                        ),
                    destinations: [
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedHome07,
                        label: 'Home',
                        index: 0,
                        selectedIndex: state.selectedIndex,
                      ),
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedShoppingCart02,
                        label: 'Cart',
                        index: 1,
                        selectedIndex: state.selectedIndex,
                      ),
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedFavourite,
                        label: 'Favorites',
                        index: 2,
                        selectedIndex: state.selectedIndex,
                      ),
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedUserCircle,
                        label: 'Vendors',
                        index: 3,
                        selectedIndex: state.selectedIndex,
                      ),
                    ],
                  ),
                ),
              ),
              body: screens[state.selectedIndex],
            ),
          );
        },
      ),
    );
  }
}
