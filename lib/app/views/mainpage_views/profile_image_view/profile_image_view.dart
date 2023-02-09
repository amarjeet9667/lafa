import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileImageView extends GetView {
  const ProfileImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        scrollDirection: Axis.vertical,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
              Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.5,
                    child: const Image(
                      image: AssetImage("assets/pok.png"),
                    ),
                  ),
                ],
              ),
            ],
        body: Container());
  }
}
