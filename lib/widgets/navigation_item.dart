import 'package:flutter/material.dart';
import 'package:minimart/util/constants/sizes.dart';
import 'package:minimart/util/constants/colors.dart';

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int selectedIndex;
  final int? badgeCount;

  const NavigationItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
    this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, bottom: 32.0),
      child: NavigationDestination(
        icon: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 16.0,
              ),
              height: 32,
              width: MediaQuery.of(context).size.width / 4 - 24,
              decoration: BoxDecoration(
                color:
                    selectedIndex == index
                        ? MiniMartAppColors.primary
                        : Colors.transparent,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: MiniMartSizes.iconMd,
                  color:
                      selectedIndex == index
                          ? MiniMartAppColors.white
                          : MiniMartAppColors.black,
                ),
              ),
            ),

            if (badgeCount != null && badgeCount! > 0)
              Positioned(
                right: 10.00,
                top: 0.5,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.52,
                    vertical: 3.41,
                  ),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: Color(0xFF3C4856),
                    borderRadius: BorderRadius.circular(68.17),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        '$badgeCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.22,
                          fontWeight: FontWeight.w700,
                          height: 17.04 / 10.22, // line-height ÷ font-size → 1.67
                          letterSpacing: 0.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        label: label,
      ),
    );
  }
}
