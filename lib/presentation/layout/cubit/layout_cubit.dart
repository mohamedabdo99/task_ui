import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout_states.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInitial());
  static HomeLayoutCubit get(context) => BlocProvider.of(context);
  late TabController tabController;
  void changeTab(String tab) {
    switch (tab) {
      case "home":
        tabController.animateTo(0);
        break;
      case "Star":
        tabController.animateTo(1);
        break;
      case "Wallet":
        tabController.animateTo(2);
        break;
      case "Profile":
        tabController.animateTo(3);
        break;
      default:
    }
  }
}
