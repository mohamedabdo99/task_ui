import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/core/themes/colors.dart';
import 'package:task/core/utils/responsive.dart';
import 'package:task/presentation/componants/customtext.dart';

class OnlineExpertsWidget extends StatelessWidget {
  const OnlineExpertsWidget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Column(
          children: [
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                  color: AppColors.lightGrey, shape: BoxShape.circle),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: CustomText(
                name,
                color: AppColors.grey,
                fontsize: 12.0,
                weight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: CircleAvatar(
            radius: 3.0,
            backgroundColor: AppColors.green,
          ),
        ),
      ],
    );
  }
}
