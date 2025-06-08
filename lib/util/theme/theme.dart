
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart/util/constants/colors.dart';
import 'package:minimart/util/theme/custom_themes/appbar_theme.dart';
import 'package:minimart/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:minimart/util/theme/custom_themes/checkbox_theme.dart';
import 'package:minimart/util/theme/custom_themes/chip_theme.dart';
import 'package:minimart/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:minimart/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:minimart/util/theme/custom_themes/text_field_theme.dart';
import 'package:minimart/util/theme/custom_themes/text_theme.dart';

class MiniMartAppTheme {
  MiniMartAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
    brightness: Brightness.light,
    primaryColor: MiniMartAppColors.primary,
    scaffoldBackgroundColor: Color(0xFFFBFBFB),
    textTheme: MiniMartTextTheme.lightTextTheme,
    chipTheme: MiniMartChipTheme.lightChipTheme,
    elevatedButtonTheme: MiniMartElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MiniMartAppBarTheme.lightAppBarTheme,
    checkboxTheme: MiniMartCheckboxTheme.lightChechboxTheme,
    outlinedButtonTheme: MiniMartOutlinedButton.lightOutlinedButtonTheme,
    bottomSheetTheme: MiniMartBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: MiniMartTextFormFieldTheme.lightInputDecorationTheme
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
    brightness: Brightness.dark,
    primaryColor: MiniMartAppColors.primary,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MiniMartTextTheme.darkTextTheme,
    chipTheme: MiniMartChipTheme.darkChipTheme,
    elevatedButtonTheme: MiniMartElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: MiniMartAppBarTheme.darkAppBarTheme,
    checkboxTheme: MiniMartCheckboxTheme.darkChechboxTheme,
    outlinedButtonTheme: MiniMartOutlinedButton.darkOutlinedButtonTheme,
    bottomSheetTheme: MiniMartBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: MiniMartTextFormFieldTheme.darkInputDecorationTheme
  );
}
