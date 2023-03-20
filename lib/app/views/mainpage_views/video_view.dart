import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:fun_unlimited/app/common_widgets/common_text.dart';
import 'package:fun_unlimited/app/controllers/mainpage_controller/video_controller.dart';
import 'package:fun_unlimited/app/views/mainpage_views/profile_image_view/video_views_buttons/Audio_call/Audio_call_view.dart';
import 'package:fun_unlimited/app/views/live_view.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:get/get.dart';

import 'profile_image_view/video_views_buttons/card_button/card_button.dart';

class VideoView extends GetView {
  @override
  final controller = Get.put(VideoController());
  VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      animationDuration: const Duration(
        seconds: 2,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                tabs: controller.toptab,
                isScrollable: true,
                labelColor: purple,
                unselectedLabelColor: black,
                indicatorColor: Colors.transparent,
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 17,
                ),
                labelStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // This is Nearby Tab view

              Expanded(
                child: TabBarView(
                  children: [
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage("assets/gps.png"),
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
                              onTap: () {
                                // Get.to(() => const CurrentLocationView());
                              },
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
                                    style:
                                        TextStyle(color: purple, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const RandomMatch(button: Text(''))
                      ],
                    ),

                    // This is Discover Tab view

                    PageView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 20,
                      itemBuilder: (context, i) {
                        return const HomeCardWidget();
                      },
                    ),

                    // This is Popular Tab view

                    Stack(
                      children: [
                        GridView.count(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          crossAxisCount: 2,
                          scrollDirection: Axis.vertical,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: List.generate(
                            50,
                            (index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const LiveView());
                                },
                                child: ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Image(
                                      image: NetworkImage(
                                        "https://i.pinimg.com/originals/fd/70/31/fd7031379854d7dd6490a137be03e3fc.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const RandomMatch(button: Text(""))
                      ],
                    ),

                    // This is New Tab view

                    Stack(
                      children: [
                        GridView.count(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          crossAxisCount: 2,
                          scrollDirection: Axis.vertical,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: List.generate(30, (index) {
                            return ClipRRect(
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: const Image(
                                  image: NetworkImage(
                                    "https://jaduikahaniya.com/wp-content/uploads/2020/10/beautiful-girls.webp",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }),
                        ),
                        const RandomMatch(button: Text(""))
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

class HomeCardWidget extends StatefulWidget {
  const HomeCardWidget({
    super.key,
  });

  @override
  State<HomeCardWidget> createState() => _HomeCardWidgetState();
}

class _HomeCardWidgetState extends State<HomeCardWidget> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('hfghkjhgf'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        log('Widget ${visibilityInfo.key} is $visiblePercentage% visible');
        if (visiblePercentage >= 60) {
          setState(() {
            isVisible = false;
          });
        }
      },
      child: isVisible
          ? const Center(child: Text("Next Screen"))
          : Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const CardButtonView());
                  },
                  child: Card(
                    child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(15),
                      child: const Image(
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/17/e5/d0/17e5d0456406a79f0c71fbaffe63e3a0.jpg"),
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 22,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: trans1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.live_tv,
                                  size: 12,
                                  color: purple,
                                ),
                                Text(
                                  "  Live",
                                  style: TextStyle(color: white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: white,
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(18),
                                  child: const Image(
                                    image: NetworkImage(
                                      "https://i.pinimg.com/originals/17/e5/d0/17e5d0456406a79f0c71fbaffe63e3a0.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),
                                SizedBox.expand(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      CircleAvatar(
                                        backgroundColor: purple,
                                        radius: 14,
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const MyTextn(text: "English"),
                            const MyTextn(text: "Shirley Setia"),
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: white,
                                  radius: 15,
                                  child: Icon(
                                    Icons.flag,
                                    color: green,
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: trans1,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        size: 14,
                                        color: purple,
                                      ),
                                      Text(
                                        "  level",
                                        style: TextStyle(
                                            color: white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => const AudioCallView());
                          },
                          child: const CircleAvatar(
                            backgroundColor: purple,
                            radius: 25,
                            child: Icon(
                              Icons.call,
                              color: white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const RandomMatch(button: Text(""))
              ],
            ),
    );
  }
}
