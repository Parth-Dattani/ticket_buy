import 'package:get/get.dart';
import '../controller/controller.dart';


class MobileOtpBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<MobileOtpController>(MobileOtpController(), permanent: false);
  }

}