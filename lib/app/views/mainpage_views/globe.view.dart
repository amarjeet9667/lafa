import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:fun_unlimited/app/controllers/mainpage_controller/globe_controller.dart';

import 'package:get/get.dart';

class GlobeView extends GetView<GlobeController> {
  @override
  final controller = Get.put(GlobeController());
  GlobeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                tabs: controller.toptab,
                indicatorColor: trans,
                isScrollable: true,
                labelColor: purple,
                unselectedLabelColor: black,
                labelStyle: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Tis is Moment Tab view
                    Container(
                      color: blue,
                    ),

                    // Tis is Group Tab view
                    Container(
                      color: pink,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
