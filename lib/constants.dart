import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFFD3AD6A);
const Color kAccentColor = Color(0xFF304637);
const Color kBGColor = Color(0xFFF2F2F2);
const Color kDarkGrayColor = Color(0xFFA2A5A9);

final ThemeData theme = ThemeData(
  fontFamily: 'Tajawal',
  primaryColor: kPrimaryColor,
  accentColor: kAccentColor,
  canvasColor: kBGColor,
  platform: TargetPlatform.iOS,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    title: TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.bold,
    ),
    subtitle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  ),
);

double sizeFromHeight(BuildContext context, double fraction,
    {bool removeAppBarSize = true}) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  fraction = (removeAppBarSize
      ? (mediaQuery.size.height -
      sizeFromHeight(context, 7.5 ,removeAppBarSize: false))
      : mediaQuery.size.height) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(BuildContext context, double fraction) {
  fraction = MediaQuery.of(context).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}