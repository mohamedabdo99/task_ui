import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage({Key? key, required this.svg, this.sizeWidth = 150,this.sizeHeight = 300 , this.imageColor =Colors.white})
      : super(key: key);
  final String svg;
  final double sizeWidth;
  final double sizeHeight;
  final Color imageColor;


  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/$svg",
      width: sizeWidth,
      height: sizeHeight,
      color: imageColor,
    );
  }
}
