import 'package:flutter/material.dart';
import 'package:minimart/util/constants/colors.dart';

class ReturnBar extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const ReturnBar({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MiniMartAppColors.white,
        border: const Border(
          bottom: BorderSide(
            color: MiniMartAppColors.kitSectionFill,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed ?? () {},
              child: Icon(
                Icons.chevron_left,
                size: 24.0, 
                color: MiniMartAppColors.grey500,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                height: 1.0, // 100% line-height = 1.0
                letterSpacing: 0.0,
              ),
            ),
          ),
        ]
      ),
    );
  }
}
