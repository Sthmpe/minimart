import 'package:flutter/material.dart';
import 'package:minimart/util/constants/colors.dart';
import 'package:minimart/util/constants/sizes.dart';

class MiniMartAppBarTheme {
  MiniMartAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MiniMartAppColors.black, size: MiniMartSizes.iconSm),
    actionsIconTheme: IconThemeData(color: MiniMartAppColors.black, size: MiniMartSizes.iconSm),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: MiniMartAppColors.black)
  );

   static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MiniMartAppColors.white, size: MiniMartSizes.iconSm),
    actionsIconTheme: IconThemeData(color: MiniMartAppColors.white, size: MiniMartSizes.iconSm),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: MiniMartAppColors.white)
  );
}