import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/core/themes/colors.dart';
import 'package:task/core/utils/responsive.dart';
import 'package:task/presentation/componants/customtext.dart';
import 'package:task/presentation/componants/svgIcon.dart';
import 'package:task/presentation/screens/splash/widgets/splash_body.dart';
import 'package:task/presentation/shared/default_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }
}
