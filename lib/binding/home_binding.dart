import 'package:get/get.dart';
import 'package:ticket_buy/controller/controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(), permanent: false);
  }

}