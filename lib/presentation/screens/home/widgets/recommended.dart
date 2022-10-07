import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/core/themes/colors.dart';
import 'package:task/core/utils/responsive.dart';
import 'package:task/presentation/componants/customtext.dart';
import 'package:task/presentation/componants/svgIcon.dart';

class RecommendedWidgets extends StatelessWidget {
  const RecommendedWidgets({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text,
          weight: FontWeight.w500,
          fontsize: 16.0,
          color: AppColors.grey,
        ),
        Spacer(),
        SvgIcon(
          svg: 'more',
          size: 16.0,
        ),
      ],
    );
  }
}
