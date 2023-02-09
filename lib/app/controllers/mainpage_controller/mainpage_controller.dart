import 'package:flutter/cupertino.dart';
import 'package:fun_unlimited/app/views/mainpage_views/about_view.dart';
import 'package:fun_unlimited/app/views/mainpage_views/globe.view.dart';
import 'package:fun_unlimited/app/views/mainpage_views/home_view.dart';
import 'package:fun_unlimited/app/views/mainpage_views/tv_view.dart';
import 'package:fun_unlimited/app/views/mainpage_views/video_view.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> widgetList = [
    VideoView(),
    TvView(),
    HomeView(),
    GlobeView(),
    const AboutView()
  ];

  changeIndex(int index) {
    selectedIndex(index);
    update();
  }
}
