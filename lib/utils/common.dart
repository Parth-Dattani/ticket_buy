import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';


class Common{
  static void getSnackBar(String title, String description,
      {int duration = 2, SnackPosition position = SnackPosition.BOTTOM}) {
    Get.snackbar(title, description,
        snackPosition: position, duration: Duration(seconds: duration));
  }




  static void errorSnackBar(String error, String somethingWentWrong) {
    Get.snackbar(
      error, somethingWentWrong,
      snackPosition: SnackPosition.TOP,
      backgroundColor: ColorsConfig.colorBlue,
      colorText: ColorsConfig.colorWhite,
      forwardAnimationCurve: Curves.easeOutBack,
      duration: const Duration(seconds: 5),
      margin: const EdgeInsets.all(15),
      // icon: const Icon(Icons.close, color: ColorsConfig.colorWhite)
    );
  }

}