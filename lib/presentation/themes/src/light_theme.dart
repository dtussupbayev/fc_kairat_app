part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparent,
      centerTitle: true,
      foregroundColor: AppColors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.mainYellow,
      unselectedItemColor: AppColors.grey,
    ),
  );
}
