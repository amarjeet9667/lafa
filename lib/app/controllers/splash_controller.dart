import 'package:fun_unlimited/app/views/login_views/login_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAll(() => const LoginView());
    });
  }
}
