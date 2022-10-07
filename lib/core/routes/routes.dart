import 'package:flutter/material.dart';
import 'package:task/presentation/screens/chat/chat_screen.dart';
import 'package:task/presentation/screens/on_boarding/on_boarding.dart';
import '../../presentation/layout/layout.dart';
import '../../presentation/screens/splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeLayout = "home_layout";
  static const String onBoarding = "onBoarding";
  static const String chat = "chat_screen";
  static const String otpScreen = "otp_screen";
  static const String moreScreen = "more_screen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) {
          return SplashScreen();
        });
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) {
          return OnBoardingScreen();
        });
      case Routes.homeLayout:
        return MaterialPageRoute(builder: (_) {
          return HomeLayout();
        });
      case Routes.chat:
        return MaterialPageRoute(builder: (_) {
          return ChatScreen();
        });
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("مسار غير موجود"),
              ),
              body: Center(child: Text("مسار غير موجود")),
            ));
  }
}
