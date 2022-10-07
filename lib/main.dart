import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_color_gen/material_color_gen.dart';
import 'package:task/core/routes/routes.dart';
import 'package:task/presentation/layout/cubit/layout_cubit.dart';

import 'core/themes/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  EasyLocalization.logger.enableBuildModes = [];

  runApp(EasyLocalization(
      startLocale: Locale('en', 'US'),
      supportedLocales: [
        Locale('ar', 'EG'),
        Locale('en', 'US'),
      ],
      path: 'assets/translations',
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeLayoutCubit>(
          create: (context) => HomeLayoutCubit(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          builder: (context, child) {
            final botToastBuilder = BotToastInit();
            child = botToastBuilder(context, child);
            return child;
          },
          title: 'Flutter Demo',
          theme: ThemeData(
              appBarTheme: AppBarTheme(
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.white),
              primarySwatch: AppColors.primiry.toMaterialColor(),
              fontFamily: "Tajawal"),
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.splashRoute),
    );
  }
}
