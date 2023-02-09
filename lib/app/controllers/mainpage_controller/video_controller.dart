import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  late TabController tabController;

  final List<Tab> toptab = <Tab>[
    const Tab(
      text: "Nearby",
    ),
    const Tab(
      text: "Discover",
    ),
    const Tab(
      text: "Popular",
    ),
    const Tab(
      text: "New",
    ),
  ];
}
