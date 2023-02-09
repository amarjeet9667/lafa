import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TvController extends GetxController {
  late TabController tabController;

  List<Tab> toptab = <Tab>[
    const Tab(
      text: "Nearby",
    ),
    const Tab(
      text: "Live",
    ),
    const Tab(
      text: "Multi",
    ),
    const Tab(
      text: "New",
    ),
    const Tab(
      text: "Follow",
    )
  ];
}
