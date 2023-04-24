import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_buy/controller/base_controller.dart';
import 'package:ticket_buy/screen/HomeScreen/home_screen.dart';
import 'package:ticket_buy/utils/utils.dart';

class LoginController extends BaseController{

  final GlobalKey<FormState> loginForm = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  RxBool otpVisibility = false.obs;
  User? user;
  RxString verificationID = "".obs;

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+91${phoneController.text}",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          debugPrint("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        debugPrint("verificationFailed : ${e.message}");
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility.value = true;
        verificationID.value = verificationId;
        update();
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID.value, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
          (value) {
        user = FirebaseAuth.instance.currentUser;
        update();
      },
    ).whenComplete(
          () {
        if (user != null) {

          Common.getSnackBar("Login", "You are logged in successfully");

          Get.toNamed(HomeScreen.pageId);
        } else {
          Common.getSnackBar("Failed", "your login is failed");
        }
      },
    );
  }
}