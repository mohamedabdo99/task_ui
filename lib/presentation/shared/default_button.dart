
import 'package:flutter/material.dart';
import 'package:task/core/utils/responsive.dart';

import '../../core/themes/colors.dart';

Widget defaultButton({
  double width = double.infinity,
  double? height,
  Color background = Colors.blue,
  Color textColor = Colors.white,
  bool isUpperCase = true,
  double radius = 8.0,
  double? fontSize,
  String? fontFamily,
  required Function function,
  required String text,
}) =>
    Container(
      clipBehavior: Clip.hardEdge,
      width: width,
      height: height ?? 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: AppColors.primiry,
      ),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all(background),
        ),
        onPressed: () {
          function();
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: fontSize ?? 12.fs,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
        ),
      ),
    );
