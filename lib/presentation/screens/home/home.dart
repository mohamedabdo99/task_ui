import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/core/themes/colors.dart';
import 'package:task/core/utils/responsive.dart';
import 'package:task/domain/user/user_model.dart';
import 'package:task/presentation/screens/home/widgets/item_expert.dart';
import 'package:task/presentation/screens/home/widgets/online_experts.dart';
import 'package:task/presentation/screens/home/widgets/recommended.dart';

import '../../componants/customtext.dart';
import '../../componants/svgIcon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> userList = [
    UserModel(
        image: "assets/images/profile.png",
        name: 'Kareem Adel',
        title: 'Supply Chain'),
    UserModel(
        image: "assets/images/femail.png",
        name: 'Merna Adel',
        title: 'Supply Chain'),
  ];

  List<String> expertNameList = [
    'Lance',
    'Niles',
    ' Samuel',
    'Hilary',
    'Hanson,'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: RecommendedWidgets(
              text: 'Recommended Experts',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 270.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ItemExpertWidget(
                      image: userList[index].image ?? '',
                      name: userList[index].name ?? '',
                      title: userList[index].title ?? '',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20.0,
                    );
                  },
                  itemCount: userList.length),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: RecommendedWidgets(
              text: 'Online Experts',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 120.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return OnlineExpertsWidget(
                      name: expertNameList[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15.0,
                    );
                  },
                  itemCount: expertNameList.length),
            ),
          )
        ]),
      ),
      bottomNavigationBar: DraggableScrollableSheet(
        expand: false,
        minChildSize: 0.05,
        maxChildSize: 0.5,
        initialChildSize: 0.05,
        builder: (context, scrollController) => DraggableItem(
          controller: scrollController,
        ),
      ),
    );
  }
}

class DraggableItem extends StatelessWidget {
  const DraggableItem({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0))),
        child: Column(
          children: [
            const SizedBox(
              width: 100,
              height: 20,
              child: Card(
                elevation: 0,
                shape: StadiumBorder(),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey, width: .7),
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.white),
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgIcon(
                        svg: 'information',
                        size: 80.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.0.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                'Information Technology',
                                fontsize: 14,
                                weight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              CustomText(
                                '23 Experts',
                                fontsize: 12,
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      SvgIcon(
                        svg: 'arrow',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
