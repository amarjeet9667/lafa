import 'package:flutter/cupertino.dart';
import 'package:fun_unlimited/app/common_widgets/common_colors.dart';
import 'package:fun_unlimited/app/controllers/about_controller/userimage_controller.dart';

import 'package:get/get.dart';

class UsewrImageView extends GetView<UserImageControllder> {
  const UsewrImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.6,
      width: Get.width * 0.7,
      color: white,
      child: Column(
        children: const [],
      ),
    );
  }
}
