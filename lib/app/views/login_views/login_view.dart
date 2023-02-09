import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:fun_unlimited/app/controllers/login_controllers/login_controller.dart';
import 'package:fun_unlimited/app/views/login_views/phone_login_view/phone_view.dart';
import 'package:fun_unlimited/app/views/mainpage_views/mainpage_view.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controller = Get.put(LoginController());
  bool isLoading = true;
  late VideoPlayerController videoController;

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.network(
        'https://player.vimeo.com/external/577967684.sd.mp4?s=07e4cba9cd491c302b61eaa87a02f472c159da2d&profile_id=165&oauth2_token_id=57447761')
      ..initialize().then((value) {
        setState(() {
          isLoading = false;
        });
        videoController.play();
        videoController.setLooping(true);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: Get.height,
          width: Get.width,
          child: isLoading
              ? const SizedBox()
              : VideoPlayer(
                  videoController,
                ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 90),
                    child: Text(
                      "Lafa",
                      style: TextStyle(
                          color: white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Obx(
                () => Column(
                  children: [
                    SizedBox(
                      height: 45,
                      width: Get.width * 0.7,
                      child: ElevatedButton(
                        onPressed: () {
                          videoController.dispose();
                          Get.offAll(() => MainView());
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Start",
                          style: TextStyle(color: black),
                        ),
                      ),
                    ),
                    controller.tap.value
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 45,
                                  width: Get.width * 0.7,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      controller.signInWithGoogle();
                                      videoController.dispose();
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(pink),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      "Google",
                                      style: TextStyle(color: black),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 45,
                                  width: Get.width * 0.7,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      videoController.dispose();
                                      Get.to(() => const PhoneView());
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(purple),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      "Phone",
                                      style: TextStyle(color: black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : TextButton(
                            onPressed: () {
                              controller.tap(true);
                            },
                            child: const Text(
                              " More ",
                              style: TextStyle(color: white, fontSize: 15),
                            ),
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controller.tap.value
                            ? IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.check_box,
                                  size: 13,
                                  color: green,
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  controller.tap(true);
                                },
                                icon: const Icon(
                                  Icons.check_box,
                                  size: 13,
                                  color: white,
                                ),
                              ),
                        const Text(
                          "Terms & Condition",
                          style: TextStyle(color: white, fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
