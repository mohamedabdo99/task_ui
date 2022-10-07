import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/presentation/layout/widgets/appbar.dart';
import 'package:task/presentation/layout/widgets/bottom_navbar.dart';
import 'package:task/presentation/layout/widgets/floatactionbotton.dart';
import 'package:task/presentation/screens/home/home.dart';

import 'cubit/layout_cubit.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    final cubit = HomeLayoutCubit.get(context);
    cubit.tabController =
        TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = HomeLayoutCubit.get(context);
    return Scaffold(
        appBar: CustomAppBar(),
        body: TabBarView(
          controller: cubit.tabController,
          physics: NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            Scaffold(),
            Scaffold(),
            Scaffold(),
          ],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        bottomNavigationBar: CustomBottomNavBar(cubit));
  }
}
