import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/core/themes/colors.dart';
import 'package:task/core/utils/responsive.dart';
import 'package:task/presentation/componants/customtext.dart';
import 'package:task/presentation/componants/svgIcon.dart';

import '../../../core/routes/routes.dart';
import '../../shared/default_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(children: [
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Padding(
            padding: EdgeInsets.only(
              top: 110.0.fs,
              right: 30.0,
            ),
            child: SvgIcon(
              svg: 'on_boarding',
              size: 300.0,
              color: AppColors.primiry,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.only(top: 110.0, left: 100.0),
            child: SizedBox(
              height: 134.h,
              width: 247.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hi, My name is ',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 19.0.fs),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Oranobot',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0.fs),
                        ),
                      ],
                    ),
                  ),
                  CustomText(
                    '''I will always be there to help and assist you.

''',
                    color: AppColors.black,
                    weight: FontWeight.w400,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Say ',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 19.0.fs),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Start ',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0.fs),
                        ),
                        TextSpan(
                          text: 'To go to Next.',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 19.0.fs),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Padding(
            padding: EdgeInsets.only(top: 240.0.h),
            child: SvgIcon(
              svg: 'get_start',
              size: 240.0,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 99.0),
            child: defaultButton(
              function: () {
                Navigator.pushNamed(
                  context,
                  Routes.chat,
                );
              },
              text: 'Next',
              background: AppColors.primiry,
              fontSize: 18,
              height: 53.h,
              width: 147.w,
              radius: 6.0,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgIcon(
                  svg: 'trans',
                  size: 16.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                CustomText(
                  'English',
                  color: AppColors.black,
                  weight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
