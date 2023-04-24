import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_buy/controller/controller.dart';
import 'package:ticket_buy/utils/utils.dart';
import '../../constant/constant.dart';
import '../../widgets/common_text_field.dart';
import '../../widgets/widget.dart';

class LoginScreen extends GetView<LoginController>{
  static const pageId = "/LoginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> SafeArea(
          child:
          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorsConfig.colorWhite,
            body: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImagePath.otpScreenIcon, scale: 2,height: 200,),
                Expanded(
                  child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      topLeft: Radius.circular(60),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: ColorsConfig.primaryBackground,
                      blurRadius: 2,
                      spreadRadius: 2
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      children: [
                        Image.asset(ImagePath.appNameLogo, scale: 5,),
                        const SizedBox(height: 20,),
                        CommonTextField(
                          controller: controller.phoneController,
                          validator: Validator.isPhone,
                          hintText: 'Enter Your Mobile Number',
                          borderRadius: 10,
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 20,),
                        Visibility(
                          visible: controller.otpVisibility.value,
                          child:  TextField(
                            controller: controller.otpController,
                            decoration: const InputDecoration(
                              hintText: 'OTP',
                              prefix: Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(''),
                              ),
                            ),
                            maxLength: 6,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        CommonButton(
                          name:   controller.otpVisibility.value ? "Please Verify OTP" : "Signin with OTP",
                          color: ColorsConfig.colorBlack,
                          textStyle: CustomTextStyle.buttonTextStyle,
                          borderRadius: 10,
                          minWidth: 325,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 110, vertical: 15),
                          onPress: () {
                            // controller.signUp();
                            if (controller.otpVisibility.value) {
                              controller.verifyOTP();
                            } else {
                              controller.loginWithPhone();
                            }
                          },
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: Get.width * 0.35, height: 1, color: ColorsConfig.colorBlack),
                            const Spacer(),
                            const Text(
                              "OR",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Container(
                              width: Get.width * 0.35,
                              height: 1,
                              color: ColorsConfig.colorBlack,
                            )
                          ],
                        ),
                        const SizedBox(height: 16,),
                        CommonButton(
                          name: 'Signin with Google'.tr,
                          minWidth: 325,
                          image: ImagePath.googleIcon,
                          scale: 25,
                          color: ColorsConfig.colorLightGray,
                          textStyle: CustomTextStyle.eventTitleStyle,
                          borderRadius: 6,
                          border: false,
                          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                          onPress: (){
                            // controller.signInWithGoogle();
                          },
                        ),
                        const SizedBox(height: 16,),
                        CommonButton(
                          name: 'Signin with Facebook'.tr,
                          minWidth: 325,
                          image: ImagePath.facebookIcon,
                          scale: 25,
                          color: ColorsConfig.colorLightGray,
                          textStyle: CustomTextStyle.eventTitleStyle,
                          borderRadius: 6,
                          border: false,
                          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                          onPress: (){
                            // controller.signInWithGoogle();
                          },
                        ),
                        const SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('You dont have any account?', style: CustomTextStyle.eventTimeStyle,),
                            TextButton(  onPressed: () {
                              //Get.offAndToNamed(SignUpScreen.pageId);
                            },
                                child: Text('Sign up'.tr, style: CustomTextStyle.eventTitleStyle, ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

}