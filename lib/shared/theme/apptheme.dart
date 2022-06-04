import 'package:flutter/material.dart';
import 'package:instagram_clone/shared/constant/colors.dart';
import 'package:instagram_clone/shared/constant/value.dart';
import 'package:instagram_clone/shared/theme/theme_style.dart';

ThemeData appTheme() {
  TextTheme darkThemeText(TextTheme base) {
    return base.copyWith(
      //This is in Welcome back
      headline1: ThemesAndStyles.myHeadline1(base: base),
      // This is in Category title
      headline2:
          ThemesAndStyles.myHeadline2(base: base, color: ConstantColors.white),
      headline3:
          ThemesAndStyles.myHeadline3(base: base, color: ConstantColors.white),
      //This is in Product title
      headline4: ThemesAndStyles.myHeadline4(
          base: base, color: ConstantColors.productTitleColor2C),
      //This is for explore content like todays deal, new arrival
      headline5:
          ThemesAndStyles.myHeadline5(base: base, color: ConstantColors.white),
      headline6:
          ThemesAndStyles.myHeadline6(base: base, color: ConstantColors.white),
      subtitle1:
          ThemesAndStyles.mysubTitle1(base: base, color: ConstantColors.white),
      subtitle2:
          ThemesAndStyles.mysubTitle2(base: base, color: ConstantColors.white),
      bodyText1:
          ThemesAndStyles.myBodyText1(base: base, color: ConstantColors.white),
      bodyText2:
          ThemesAndStyles.myBodyText2(base: base, color: ConstantColors.white),
      caption:
          ThemesAndStyles.myCation(base: base, color: ConstantColors.white),
      button: ThemesAndStyles.myButton(base: base, color: ConstantColors.white),
      overline: ThemesAndStyles.myOverline(
          base: base, color: ConstantColors.searchContent96),
    );
  }

  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    textTheme: darkThemeText(base.textTheme),
    primaryTextTheme: darkThemeText(base.textTheme),
    primaryColor: ConstantColors.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: ConstantColors.primaryColor,
      unselectedItemColor: ConstantColors.greyColor7A,
      backgroundColor: Colors.white,
    ),
    primaryColorDark: ConstantColors.primaryColor,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return ConstantColors.primaryColor;
          }
          return ConstantColors.greyColor96
              .withOpacity(0.5); //the color when checkbox is unselected;
        },
      ),
    ),
    // accentColor: ConstantColors.primaryColor,
    radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(ConstantColors.primaryColor)),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      shadowColor: Colors.white.withOpacity(0.4),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 15,
        height: 1.09,
        letterSpacing: 0.4,
        color: ConstantColors.white,
        fontFamily: FONT_FAMILY,
      ),
      actionsIconTheme: const IconThemeData(
        color: ConstantColors.appBarActionColor,
      ),
      iconTheme: const IconThemeData(
        color: ConstantColors.appBarActionColor,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: ConstantColors.white,
      unselectedLabelColor: ConstantColors.black,
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13,
        // letterSpacing: 1,
        fontFamily: FONT_FAMILY,
      ),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 13,
        // letterSpacing: 1,
        fontFamily: FONT_FAMILY,
      ),
      // labelPadding: EdgeInsets.fromLTRB(12, 6, 12, 4),
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(BORDER_RADIUS), // Creates border
        color: ConstantColors.primaryColor,
        border: Border.all(color: ConstantColors.primaryColor),
      ),
    ),
    inputDecorationTheme: ThemesAndStyles.myInputDecoration(
      labelColor: ConstantColors.greyColor7A,
    ),
    iconTheme: IconThemeData(
      color: ConstantColors.greyColor7A.withOpacity(0.29),
      // color: ConstantColors.greyColor,
    ),
    cardTheme: const CardTheme(elevation: 0, margin: EdgeInsets.zero),
    dialogTheme: const DialogTheme(),
    sliderTheme: const SliderThemeData(
      activeTrackColor: ConstantColors.primaryColor,
      inactiveTrackColor: ConstantColors.greyColor150WithOpacity,
      thumbColor: ConstantColors.primaryColor,
    ),
  );
}
