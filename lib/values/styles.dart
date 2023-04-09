import 'package:flutter/material.dart';
import 'package:space_fm/values/colors.dart';
import 'package:space_fm/values/dimens.dart';

abstract class Styles {
  static ThemeData themeData = ThemeData(
    // splashFactory: InkRipple.splashFactory,
    // visualDensity: VisualDensity.adaptivePlatformDensity,
    // brightness: Brightness.light,
    primaryColor: AppColors.sfBlack,
    cardTheme: CardTheme(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMedium),
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
  static const hintTextStyle = TextStyle(
    color: AppColors.sfBlack,
  );
  static const forgotPasswordTextStyle = TextStyle(
    color: AppColors.sfWhite,
    fontSize: Dimens.fontSizeDefault,
    fontWeight: FontWeight.w400,
  );
  static const buttonTextStyle = TextStyle(
    color: AppColors.sfWhite,
    fontSize: Dimens.fontSizeDefault,
    fontWeight: FontWeight.w700,
  );
}
