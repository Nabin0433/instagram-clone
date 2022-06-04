import 'package:flutter/material.dart';
import 'package:instagram_clone/shared/constant/colors.dart';
import 'package:instagram_clone/shared/constant/value.dart';

class ThemesAndStyles {
  static InputDecorationTheme myInputDecoration({required Color labelColor}) {
    return InputDecorationTheme(
      isDense: true,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ConstantColors.primaryColor,
          // width: 2.0,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
      ),
      labelStyle: TextStyle(
        fontSize: 12,
        letterSpacing: 1,
        fontWeight: FontWeight.w600,
        color: labelColor,
      ),
    );
  }

  static TextStyle myOverline({required TextTheme base, required Color color}) {
    return base.overline!.copyWith(
      fontSize: 12,
      color: color,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle myButton({required TextTheme base, required Color color}) {
    return base.button!.copyWith(
      fontFamily: FONT_FAMILY,
      color: color,
    );
  }

  static TextStyle myCation({required TextTheme base, required Color color}) {
    return base.caption!.copyWith(
      fontFamily: FONT_FAMILY,
      color: color,
    );
  }

  static TextStyle myBodyText2(
      {required TextTheme base, required Color color}) {
    return base.bodyText2!.copyWith(
      fontFamily: FONT_FAMILY,
      color: color,
    );
  }

  static TextStyle myBodyText1(
      {required TextTheme base, required Color color}) {
    return base.bodyText1!.copyWith(
      fontFamily: FONT_FAMILY,
      color: color,
    );
  }

  static TextStyle mysubTitle2(
      {required TextTheme base, required Color color}) {
    return base.subtitle2!.copyWith(
      fontFamily: FONT_FAMILY,
      color: ConstantColors.white,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
  }

  static TextStyle mysubTitle1(
      {required TextTheme base, required Color color}) {
    return base.subtitle1!.copyWith(
      fontFamily: FONT_FAMILY,
      color: ConstantColors.white,
      fontWeight: FontWeight.bold,
      fontSize: 33,
    );
  }

  static TextStyle myHeadline6(
      {required TextTheme base, required Color color}) {
    return base.headline6!.copyWith(
      fontFamily: FONT_FAMILY,
      color: color,
    );
  }

  static TextStyle myHeadline5(
      {required TextTheme base, required Color color}) {
    return base.headline5!.copyWith(
      fontFamily: FONT_FAMILY,
      fontSize: 11,
      fontWeight: FontWeight.w500,
      // height: 1.1,
    );
  }

  static TextStyle myHeadline4(
      {required TextTheme base, required Color color}) {
    return base.headline4!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 11,
      // height: 1.09,
      letterSpacing: 0.5,
      color: color,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle myHeadline3(
      {required TextTheme base, required Color color}) {
    return base.headline3!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      // height: 1.09,
      letterSpacing: 0.5,
      color: color,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle myHeadline2(
      {required TextTheme base, required Color color}) {
    return base.headline2!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 15,
      // height: 1.09,
      letterSpacing: 0.5,
      color: color,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle myHeadline1({required TextTheme base}) {
    return base.headline1!.copyWith(
      color: ConstantColors.primaryColor,
      fontSize: 28,
      letterSpacing: 0.32,
      fontWeight: FontWeight.bold,
      fontFamily: FONT_FAMILY,
    );
  }
}
