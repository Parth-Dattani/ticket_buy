import 'package:get/get.dart';
import 'package:ticket_buy/controller/controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController(), permanent: false);
  }

}