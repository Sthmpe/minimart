import 'package:flutter/material.dart';
import 'package:minimart/util/constants/colors.dart';

class BottomButton extends StatelessWidget {
  final String name;
  final VoidCallback? onTap;
  const BottomButton({
    super.key, 
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 42),
      color: MiniMartAppColors.white,
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: Material(
          color: MiniMartAppColors.primary,
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            splashColor: MiniMartAppColors.grey400.withOpacity(0.4),
            onTap: onTap,
            child: SizedBox(
              height: 20,
              width: 73,
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 20 / 14, // line-height ÷ font-size → 1.43
                    letterSpacing: 0.0,
                    color: MiniMartAppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
