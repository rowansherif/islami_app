import 'package:flutter/material.dart';
import 'package:islami_app_practice/app_colors.dart';

class MyAppTheme{
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryDark,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    )
  );
}