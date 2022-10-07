import 'package:flutter/cupertino.dart';
import 'package:task/core/utils/responsive.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/themes/colors.dart';
import '../../../componants/customtext.dart';
import '../../../componants/svgIcon.dart';
import '../../../shared/default_button.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.cover,
          "assets/images/Rectangle 1031.png",
          width: double.infinity,
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 99.0),
            child: defaultButton(
              function: () {
                Navigator.pushNamed(
                  context,
                  Routes.onBoarding,
                );
              },
              text: 'Get Started',
              background: AppColors.primiry,
              fontSize: 18,
              height: 53.h,
              width: 363.w,
              radius: 6.0,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: RichText(
              text: TextSpan(
                text: 'Don’t have an account?',
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0.fs),
                children: <TextSpan>[
                  TextSpan(
                    text: ' SignUp',
                    style: TextStyle(
                        color: AppColors.primiry,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0.fs),
                  ),
                ],
              ),
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
        Align(
          alignment: AlignmentDirectional.center,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: SvgIcon(
              svg: 'logo2',
              size: 200.0.fs,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: CustomText(
              'Expert From Every Planet',
              color: AppColors.grey,
              fontsize: 20.0.fs,
              weight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
