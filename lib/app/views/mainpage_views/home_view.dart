import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:fun_unlimited/app/controllers/mainpage_controller/home_controller.dart';

import 'package:get/get.dart';

class HomeView extends GetView {
  @override
  final controller = Get.put(HomeController());
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      animationDuration: const Duration(
        seconds: 1,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                indicatorColor: trans,
                labelColor: purple,
                unselectedLabelColor: black,
                tabs: controller.toptab,
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                labelStyle: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),

              // This is Nearby Tab view
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage("assets/waiting.png"),
                          height: 200,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Text(
                            "Turn on GPS to meet friends nearby",
                            style: TextStyle(color: black, fontSize: 15),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: purple),
                            ),
                            child: const Center(
                              child: Text(
                                "Turn On",
                                style: TextStyle(color: purple, fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    // This is Party Tab view
                    Stack(
                      children: [
                        GridView.count(
                          addAutomaticKeepAlives: true,
                          crossAxisCount: 2,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          scrollDirection: Axis.vertical,
                          children: List.generate(30, (index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: indigo,
                                ),
                              ),
                            );
                          }),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      purple,
                                    ),
                                    fixedSize: MaterialStateProperty.all(
                                      Size(Get.width * 0.5, 40),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    )),
                                child: const Text(
                                  "Let's Party",
                                  style: TextStyle(
                                    color: white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // This is Follow Tab view
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  purple,
                                ),
                                fixedSize: MaterialStateProperty.all(
                                  Size(Get.width * 0.5, 40),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )),
                            child: const Text(
                              "Let's Party",
                              style: TextStyle(
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ],
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
