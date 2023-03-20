import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobeController extends GetxController {
  RxBool like = true.obs;
  late TabController tabController;

  List<Tab> toptab = <Tab>[
    const Tab(
      text: "Moment",
    ),
    const Tab(
      text: "Group",
    ),
  ];
}
