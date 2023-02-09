import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TabController tabController;

  List<Tab> toptab = <Tab>[
    const Tab(
      text: "Nearby",
    ),
    const Tab(
      text: "Party",
    ),
    const Tab(
      text: "Follow",
    ),
  ];
}
