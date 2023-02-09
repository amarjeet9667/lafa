import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:fun_unlimited/app/common_widgets/common_text.dart';
import 'package:fun_unlimited/app/controllers/mainpage_controller/tv_controller.dart';

import 'package:get/get.dart';

class TvView extends GetView {
  @override
  final controller = Get.put(TvController());
  TvView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      animationDuration: const Duration(seconds: 1),
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                tabs: controller.toptab,
                indicatorColor: trans,
                labelColor: purple,
                unselectedLabelColor: black,
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 17,
                ),
                labelStyle: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
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

                    // This is Live Tab view
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
                                child: const Image(
                                    image: NetworkImage(
                                        "https://i.insider.com/520bf75aecad04a24d00000b?width=750&format=jpeg&auto=webp")),
                              ),
                            );
                          }),
                        ),
                        GoLiveButton(
                          golivebutton: Container(),
                        ),
                      ],
                    ),

                    // This is Multi Tab view
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
                                child: const Image(
                                    image: NetworkImage(
                                        "https://i.insider.com/520bf75aecad04a24d00000b?width=750&format=jpeg&auto=webp")),
                              ),
                            );
                          }),
                        ),
                        GoLiveButton(golivebutton: Container())
                      ],
                    ),

                    // This is New Tab view
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
                                child: const Image(
                                    image: NetworkImage(
                                        "https://i.insider.com/520bf75aecad04a24d00000b?width=750&format=jpeg&auto=webp")),
                              ),
                            );
                          }),
                        ),
                        GoLiveButton(
                          golivebutton: Container(),
                        )
                      ],
                    ),

                    // This is Follow Tab view
                    Stack(
                      children: const [GoLiveButton(golivebutton: Text(""))],
                    )
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
