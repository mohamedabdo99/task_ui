import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'customtext.dart';

import '../../core/utils/alerts.dart';

Widget SnackDesgin(BuildContext context, SnakState state, String text) {
  return Align(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.only(top: 200),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white.withOpacity(0.95),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                state == SnakState.success
                    ? Lottie.asset(
                        "assets/json/success.json",
                        width: 150,
                        height: 150,
                      )
                    : Lottie.asset(
                        "assets/json/error.json",
                        width: 150,
                        height: 150,
                      ),
                SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(text, textStyleEnum: TextStyleEnum.title),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
