import 'package:flutter/material.dart';
import 'package:minimart/util/constants/colors.dart';

class MiniMartPrimaryHeaderContainer extends StatelessWidget {
  const MiniMartPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: MiniMartAppColors.white,
        padding: const EdgeInsets.all(0),
        child: child,
    );
  }
}
