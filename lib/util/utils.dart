import 'package:flutter/material.dart';
import '../util/colors.dart';

class AppConstants {
  static const appName = "Pingo!";
}

class AppTextStyles {
  static const headerTextStyle = const TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w800,
    color: CustomColors.headerTextColor
  );

  static const subHeaderTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );

  static const unselectedTabTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );

  static const selectedTabTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: CustomColors.primaryColor,
  );
}

class AvailableFonts {
  static const primaryFont = "Quicksand";
}