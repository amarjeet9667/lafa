import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:fun_unlimited/app/controllers/about_controller/mybalance_controller.dart';
import 'package:get/get.dart';

import '../../common_widgets/common_colors.dart';

class MyBalanceView extends GetView {
  @override
  final controller = Get.put(MyBalanceController());
  MyBalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.now().minute;
    return Scaffold(
      backgroundColor: Spurple1,
      appBar: AppBar(
        backgroundColor: Spurple1,
        iconTheme: const IconThemeData(color: white),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.headphones,
              color: white,
            ),
            color: white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.note,
              color: white,
            ),
            color: white,
            onPressed: () {},
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'My Diamonds ',
                style: TextStyle(
                  fontSize: 15,
                  color: white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CountdownTimer(
                      endTime: endTime,
                      textStyle: const TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(5, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.diamond,
                            color: yellow,
                            size: 70,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
