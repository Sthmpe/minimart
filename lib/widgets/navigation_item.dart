import 'package:flutter/material.dart';
import 'package:minimart/util/constants/sizes.dart';
import 'package:minimart/util/constants/colors.dart';

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int selectedIndex;

  const NavigationItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, bottom: 32.0),
      child: NavigationDestination(
        icon: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
          height: 32,
          width: MediaQuery.of(context).size.width / 4 - 24,
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? MiniMartAppColors.primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Center(
            child: Icon(
              icon,
              size: MiniMartSizes.iconMd,
              color: selectedIndex == index
                  ? MiniMartAppColors.white
                  : MiniMartAppColors.black,
            ),
          ),
        ),
        label: label,
      ),
    );
  }
}
