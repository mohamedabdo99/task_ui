import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/core/themes/colors.dart';
import 'package:task/core/utils/responsive.dart';
import 'package:task/presentation/componants/customtext.dart';
import 'package:task/presentation/componants/svgIcon.dart';

class ItemExpertWidget extends StatelessWidget {
  const ItemExpertWidget(
      {super.key,
      required this.name,
      required this.title,
      required this.image});
  final String name;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185.w,
      height: 260.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          fit: BoxFit.contain,
          image,
          width: double.infinity,
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            children: [
              SvgIcon(
                svg: 'Star',
                color: AppColors.yellow,
              ),
              SizedBox(
                width: 5.0,
              ),
              CustomText(
                '(5.0)',
                color: AppColors.greyText,
                fontsize: 12.0.fs,
                weight: FontWeight.w400,
              ),
              Spacer(),
              SvgIcon(
                svg: 'love',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: CustomText(
            name,
            color: AppColors.black,
            weight: FontWeight.w500,
            fontsize: 14.fs,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: CustomText(
            title,
            color: AppColors.grey,
            weight: FontWeight.bold,
            fontsize: 12.fs,
          ),
        ),
      ]),
    );
  }
}
