import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_buy/screen/HomeScreen/home_screen.dart';
import 'package:ticket_buy/screen/HomeScreen/widgets/home_page_widget.dart';
import 'package:ticket_buy/screen/loginScreen/login_screen.dart';
import '../../constant/constant.dart';
import '../../controller/controller.dart';
import '../../widgets/widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OnBoardScreen extends GetView<OnBoardController> {
  static const pageId = "/OnBoardScreen";
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: ColorsConfig.colorWhite,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:30, right: 30, top: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImagePath.appNameLogo, scale: 5,),
                    GestureDetector(child: TextButton(child:  Text("SKIP >",style: CustomTextStyle.eventTimeStyle,),onPressed: (){
                      Get.toNamed(LoginScreen.pageId);
                    },)),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  pageSnapping: true,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  children: List.generate(
                    controller.images.length,
                    (index) => Column(
                      children: [
                        SizedBox(
                          width: Get.width,
                          height: Get.height/2,
                          child: Image.asset(controller.images[index],
                              fit: BoxFit.fill),
                        ),
                         Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 24.0, left: 24),
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                GradientText(
                                  controller.title[index],
                                  style: CustomTextStyle.onBoardTitleStyle,
                                  colors: const[
                                    ColorsConfig.colorLightPurple,
                                    ColorsConfig.colorPurple,
                                  ],
                                ),
                                const SizedBox(height: 12,),
                                Text(controller.subTitle[index],
                                style: CustomTextStyle.onBoardSubTitleStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPageChanged: (index) {
                    controller.currentPage.value = index;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    controller.currentPage.value != 0 ?
                    CommonCircularButton(
                      image: ImagePath.backIcon,
                      scale: 35,
                      color: ColorsConfig.colorLightGray,
                      textStyle: CustomTextStyle.forwardStyle,
                      borderRadius: 6,
                      border: false,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      onPress: (){
                        if (controller.currentPage.value != -1) {
                          controller.pageController.previousPage(duration: const Duration(milliseconds: 400), curve: Curves.ease);
                        }

                      },
                    ) : Container(),
                    DotsIndicator(
                      dotsCount: controller.images.length,
                      position: controller.currentPage.toDouble(),
                      decorator: const DotsDecorator(
                          spacing: EdgeInsets.all(4),
                          size: Size.square(15),
                          color: ColorsConfig.colorLightGray,
                          activeSize: Size(15.0, 15.0),
                          activeColor: ColorsConfig.colorBlue),
                    ),

                    CommonCircularButton(
                      image: ImagePath.forwardIcon,
                      scale: 35,
                      color: ColorsConfig.colorLightGray,
                      textStyle: CustomTextStyle.forwardStyle,
                      borderRadius: 6,
                      border: false,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      onPress: (){
                        if (controller.currentPage.value != 2) {
                          controller.pageController.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.ease);
                        }
                        else if(controller.currentPage.value == 2){
                          print("els IF ${controller.currentPage}");
                          Get.toNamed(LoginScreen.pageId);
                        }

                      },
                    ),
                  ],
                ),
              ),
              //const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
