import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:minimart/util/constants/colors.dart';
import 'package:minimart/util/constants/image_strings.dart';
import 'package:minimart/widgets/custom_search_bar.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key, required this.showSearch});
  final bool
  showSearch; // This variable can be used to toggle search functionality

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MiniMartAppColors.white,
        border: const Border(
          bottom: BorderSide(
            color: MiniMartAppColors.grey200,
            width: 1.0,
          ),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MiniMartAppColors.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(MiniMartImages.AppLogo, height: 28, width: 56)
              ),
              Column(
                children: [
                  Text(
                    'DELIVERY ADDRESS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MiniMartAppColors.headerText,
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      height: 28 / 10, // line-height divided by font-size
                      letterSpacing: 0, // default is 0
                    ),
                  ),
                  Text(
                    'Umuezike Road, Oyo State',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MiniMartAppColors.headerText,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      height: 28 / 12, // line-height divided by font-size
                      letterSpacing: 0, // default is 0
                    ),
                  ),
                ],
              ),
              Icon(
                HugeIcons.strokeRoundedNotification02,
                size: 24,
                color: MiniMartAppColors.grey500,
                weight: 1.5,
              ),
            ],
          ),
          if (showSearch) ...[
            // Show search bar only if showSearch is true
            const SizedBox(height: 8.0),
            CustomSearchBar(),
          ] else
            const SizedBox.shrink(), // Empty widget if search is not shown
        ],
      ),
    );
  }
}
