import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobeController extends GetxController {
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
