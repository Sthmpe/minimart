import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:minimart/util/constants/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 36,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: MiniMartAppColors.grey300,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 20 / 14,
            letterSpacing: 0,
          ),
          prefixIcon: Icon(
            HugeIcons.strokeRoundedSearch01,
            color: MiniMartAppColors.grey400,
            size: 20,
            weight: 1.5,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MiniMartAppColors.grey200),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MiniMartAppColors.grey200),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          contentPadding: const EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
