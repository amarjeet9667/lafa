import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                    Stack(
                      children: [
                        ListView.builder(
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return Card(
                                child: Container(
                                  height: Get.height * 0.7,
                                  width: Get.width,
                                  color: white,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: const CircleAvatar(
                                                radius: 20,
                                                backgroundColor: grey,
                                                backgroundImage: NetworkImage(
                                                  "https://i.pinimg.com/originals/17/e5/d0/17e5d0456406a79f0c71fbaffe63e3a0.jpg",
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              "Shirley Setia",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              height: 20,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: trans1,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    size: 14,
                                                    color: purple,
                                                  ),
                                                  Text(
                                                    "  level",
                                                    style: TextStyle(
                                                        color: white,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: 30,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: trans1,
                                                ),
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 14,
                                                  color: purple,
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                showBottomSheet(
                                                    context: context,
                                                    builder: (context) {
                                                      return Container(
                                                        height: 180,
                                                        width: Get.width,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: ListView(
                                                          children: ListTile
                                                              .divideTiles(
                                                            context: context,
                                                            tiles: [
                                                              ListTile(
                                                                onTap: () {},
                                                                title: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: const [
                                                                    Icon(
                                                                      Icons
                                                                          .share,
                                                                      color:
                                                                          purple,
                                                                    ),
                                                                    Text(
                                                                      "  Share to Group",
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              ListTile(
                                                                onTap: () {},
                                                                title: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: const [
                                                                    Icon(
                                                                      Icons
                                                                          .report,
                                                                      color:
                                                                          purple,
                                                                    ),
                                                                    Text(
                                                                        "  Report"),
                                                                  ],
                                                                ),
                                                              ),
                                                              ListTile(
                                                                onTap: () {
                                                                  Get.back();
                                                                },
                                                                title: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: const [
                                                                    Text(
                                                                      " Cancel",
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ).toList(),
                                                        ),
                                                      );
                                                    });
                                              },
                                              icon: const Icon(Icons.more_vert),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                              "     # Feeling Nice with Ashish and 30 Others")
                                        ],
                                      ),
                                      const Image(
                                        image: NetworkImage(
                                            "https://i.pinimg.com/originals/17/e5/d0/17e5d0456406a79f0c71fbaffe63e3a0.jpg"),
                                        height: 300,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.gift,
                                              color: grey,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.thumbsUp,
                                              color: grey,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.comment,
                                              color: grey,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                        SizedBox.expand(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const CircleAvatar(
                                    radius: 25,
                                    backgroundColor: purple,
                                    child: Icon(
                                      Icons.send,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Tis is Group Tab view
                    ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container();
                      },
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
