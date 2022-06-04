import 'package:flutter/material.dart';
import 'package:instagram_clone/shared/constant/colors.dart';
import 'package:instagram_clone/shared/constant/value.dart';

class ConstantStyles {
  static const formFieldTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ConstantColors.greyColor7A,
  );

  static const formFieldTextLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: ConstantColors.black,
  );

  static EdgeInsets screenPadding(
          {double horizontal = SCREEN_PADDING,
          double vertical = SCREEN_PADDING}) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);

  static var labelStyle = const TextStyle(
    fontSize: 12,
    letterSpacing: 1,
    fontWeight: FontWeight.w600,
    color: Color(0xff7a7a7a),
  );

  static BoxDecoration cardContainerDecoration(
      {required double opacity,
      required double blurRadius,
      Color color = Colors.black}) {
    return BoxDecoration(
      color: ConstantColors.white,
      borderRadius: BorderRadius.circular(4),
      boxShadow: [
        boxShadow(color: color, opacity: opacity, blurRadius: blurRadius),
      ],
    );
  }

  static BoxShadow boxShadow({
    Color color = ConstantColors.black,
    required double opacity,
    required double blurRadius,
    double offsetX = 0,
    double offsetY = 0,
  }) {
    return BoxShadow(
      color: color.withOpacity(opacity),

      spreadRadius: 0,
      blurRadius: blurRadius,
      offset: Offset(
        offsetX,
        offsetY,
      ), // changes position of shadow
    );
  }

  static Border buildBorder(
          {Color color = ConstantColors.grey122WithOpacity05,
          double width = 1}) =>
      Border.all(
        color: color,
        width: width,
        style: BorderStyle.solid,
      );
}
