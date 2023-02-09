import 'package:fun_unlimited/app/controllers/about_controller/mybalance_controller.dart';
import 'package:get/get.dart';

class MyBalanceBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<MyBalanceController>(MyBalanceController());
  }
}
