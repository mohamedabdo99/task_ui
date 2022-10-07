import 'package:task/core/routes/routes.dart';
import 'package:flutter/material.dart';
import '../../../core/themes/colors.dart';
import '../../componants/customtext.dart';
import '../../componants/svgIcon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 1.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: SvgIcon(
              svg: 'logo2',
              size: 70.0,
            ),
          ),
          leadingWidth: 30.0,
          leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: Image.asset(
                    fit: BoxFit.fill,
                    "assets/images/profile.png",
                  ).image,
                )),
          ),
          actions: [
            InkWell(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: SvgIcon(svg: "Search", size: 25),
              ),
              onTap: () {
                // Navigator.pushNamed(context, Routes.notfication);
              },
            ),
          ],
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}
