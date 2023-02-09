import 'package:flutter/material.dart';
import 'package:fun_unlimited/app/controllers/live_controller.dart';
import 'package:get/get.dart';

import '../common_widgets/common_colors.dart';

class LiveView extends GetView<LiveController> {
  const LiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: green,
      ),
    );
  }
}
