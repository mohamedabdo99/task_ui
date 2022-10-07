import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppColors {
  static Color get primiry =>
      Utiles.appMode == ThemeMode.light ? Color(0xFF16919B) : Colors.white;
  static Color get secondary =>
      Utiles.appMode == ThemeMode.light ? Color(0xFF16919B) : Colors.white;
  static Color get black =>
      Utiles.appMode == ThemeMode.light ? Colors.black : Colors.white;
  static Color get white =>
      Utiles.appMode == ThemeMode.light ? Colors.white : Colors.black;
  static Color get grey =>
      Utiles.appMode == ThemeMode.light ? Color(0xff7A7A7A) : Colors.black;
  static Color get lightGrey =>
      Utiles.appMode == ThemeMode.light ? Color(0xffE2E0E0) : Colors.black;
  static Color get lightGreybackgound =>
      Utiles.appMode == ThemeMode.light ? Color(0xff77838F) : Colors.black;
  static Color get darkGrey =>
      Utiles.appMode == ThemeMode.light ? Color(0xff707070) : Colors.black;
  static Color get greyText =>
      Utiles.appMode == ThemeMode.light ? Color(0xff7A7A7A) : Colors.black;
  static Color get buttonColor =>
      Utiles.appMode == ThemeMode.light ? Color(0xff30B9BB) : Colors.black;
  static Color get red =>
      Utiles.appMode == ThemeMode.light ? Color(0xffFF0000) : Colors.black;
  static Color get yellow =>
      Utiles.appMode == ThemeMode.light ? Color(0xffFFCC00) : Colors.black;
  static Color get green =>
      Utiles.appMode == ThemeMode.light ? Color(0xff06C88A) : Colors.black;
}
