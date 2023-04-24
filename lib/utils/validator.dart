import 'package:get/get.dart';

class Validator {
  //static final controller = Get.find<BaseController>();

  static String emailString=r"^[a-zA-Z0-9_.\-]+@[a-zA-Z0-9_.\-]+\.[a-zA-Z]+";

  static String? isEmail(String? email) {
    if (email!.isEmpty) {
      return 'please_enter_email'.tr;
    } else if (!RegExp(emailString).hasMatch(email)) {
      return 'not_valid_email_address'.tr;
    }
    return null;
  }



  static String? isPhone(phone) {
    if (phone.isEmpty) {
      return 'please_enter_phone'.tr;
    }
    else if (phone.length != 10) {
      return 'phone_number_must_be_10_digit'.tr;
    }
    return null;
  }


}
