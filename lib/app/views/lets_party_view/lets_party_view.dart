import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:get/get.dart';

class LetsPartyView extends StatefulWidget {
  const LetsPartyView({super.key});

  @override
  State<LetsPartyView> createState() => _LetsPartyViewState();
}

class _LetsPartyViewState extends State<LetsPartyView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ppurple1,
        body: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: white,
                          radius: 25,
                          child: Icon(
                            FontAwesome.fire,
                            color: purple,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Lafa",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.count(
                        childAspectRatio: 0.6,
                        crossAxisCount: 3,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        children: List.generate(6, (index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: const BoxDecoration(
                                color: white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: purple,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: const [
                                                    Icon(
                                                      Icons.home,
                                                      color: yellow,
                                                      size: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 5,
                                                      backgroundColor: green,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: purple),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: const [
                                                    Icon(
                                                      FontAwesome.gift,
                                                      color: red,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "13.5K",
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const CircleAvatar(
                                      radius: 20,
                                      backgroundColor: purple,
                                      child: Icon(
                                        FontAwesome.fire,
                                        color: white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Member Name",
                                          style: TextStyle(
                                              color: purple, fontSize: 10),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: const Icon(
                                            Icons.mic,
                                            color: purple,
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
