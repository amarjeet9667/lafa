import 'package:fun_unlimited/app/controllers/about_controller/messagepage_controller.dart';
import 'package:get/get.dart';

class MessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MessagePageControlletr>(MessagePageControlletr());
  }
}
