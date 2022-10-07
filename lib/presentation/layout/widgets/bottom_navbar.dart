import 'package:flutter/material.dart';
import 'package:task/core/utils/responsive.dart';

import '../../../core/themes/colors.dart';
import '../../componants/customtext.dart';
import '../../componants/svgIcon.dart';
import '../cubit/layout_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(this.cubit);
  final HomeLayoutCubit cubit;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: AppColors.white,
      child: Container(
        height: 70.0.h,
        child: SizedBox(
          child: Row(
            children: <Widget>[
              navBarItem('Home', ontap: () {
                cubit.changeTab("category");
              }),
              navBarItem('Star', ontap: () {
                cubit.changeTab("favourite");
              }),
              SizedBox(
                width: 10,
              ),
              navBarItem('Wallet', ontap: () {
                cubit.changeTab("appointment");
              }),
              navBarItem('Profile', ontap: () {
                cubit.changeTab("more");
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget navBarItem(String icon, {VoidCallback? ontap}) {
    return Expanded(
      child: InkWell(
        onTap: ontap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgIcon(
              svg: icon,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}

