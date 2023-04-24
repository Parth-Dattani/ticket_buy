import 'package:get/get.dart';
import '../controller/controller.dart';

class OnBoardBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<OnBoardController>(OnBoardController(), permanent: false);
  }
}