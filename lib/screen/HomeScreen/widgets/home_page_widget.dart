import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_buy/screen/HomeScreen/widgets/custom_appBar.dart';
import 'package:ticket_buy/screen/HomeScreen/widgets/event_list_widget.dart';
import 'package:ticket_buy/widgets/common_loader.dart';
import '../../../constant/constant.dart';
import '../../../controller/controller.dart';

class HomePageWidget extends StatelessWidget {
  static final controller = Get.find<HomeController>();

  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> CommonLoader(isLoad: controller.loader.value,
      body:Scaffold(
          appBar: const CustomAppBar(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    CarouselSlider(
                      items: controller.imgList
                          .map((item) => ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 800,
                          )))
                          .toList(),
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: false,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        viewportFraction: 0.9,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      height: 15.0,
                      thickness: 5,
                      color: ColorsConfig.colorBlue,
                      indent: 1.0,
                      endIndent: 300.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Event Near You".toUpperCase(),
                          style: CustomTextStyle.eventStyle,
                        ),
                        Text("VIEW ALL >", style: CustomTextStyle.viewStyle)
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      height:  250,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: controller.resultAlleventList.length,
                        itemBuilder:(context, index) {
                          return controller.resultAlleventList.isNotEmpty ? Obx(
                            ()=> EventListWidget(
                                title: controller.resultAlleventList[index].eventName.toString(),
                              eventLink: controller.resultAlleventList[index].eventImage.toString(),
                                startDate: controller.resultAlleventList[index].eventStartDatetime.toString(),
                                endDate: controller.resultAlleventList[index].eventEndDatetime.toString(),
                                image: controller.resultAlleventList[index].eventImage.toString(),
                            ),
                          ):Container();
                        },
                        separatorBuilder: (context, index) => Container(width: 20,),
                      ),
                    ),
                    //eventWidget(),

                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      height: 15.0,
                      thickness: 5,
                      color: ColorsConfig.colorBlue,
                      indent: 1.0,
                      endIndent: 300.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular now".toUpperCase(),
                          style: CustomTextStyle.eventStyle,

                        ),
                        Text("VIEW ALL >", style: CustomTextStyle.viewStyle)
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      height:  250,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder:(context, index) {
                          return controller.resultAlleventList.isNotEmpty ? Obx(
                                ()=> EventListWidget(
                              title: controller.resultAlleventList[index].eventName.toString(),
                              eventLink: controller.resultAlleventList[index].eventImage.toString(),
                              startDate: controller.resultAlleventList[index].eventStartDatetime.toString(),
                              endDate: controller.resultAlleventList[index].eventEndDatetime.toString(),
                              image: controller.resultAlleventList[index].eventImage.toString(),
                            ),
                          ):Container();
                        },
                        separatorBuilder: (context, index) => Container(width: 20,),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      height: 15.0,
                      thickness: 5,
                      color: ColorsConfig.colorBlue,
                      indent: 1.0,
                      endIndent: 300.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Viewed".toUpperCase(),
                          style: CustomTextStyle.eventStyle,

                        ),
                        Text("VIEW ALL >", style: CustomTextStyle.viewStyle)
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      height:  250,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder:(context, index) {
                          return controller.resultAlleventList.isNotEmpty ? Obx(
                                ()=> EventListWidget(
                              title: controller.resultAlleventList[index].eventName.toString(),
                                  eventLink: controller.resultAlleventList[index].eventImage.toString(),
                              startDate: controller.resultAlleventList[index].eventStartDatetime.toString(),
                              endDate: controller.resultAlleventList[index].eventEndDatetime.toString(),
                              image: controller.resultAlleventList[index].eventImage.toString(),
                            ),
                          ):Container();
                        },
                        separatorBuilder: (context, index) => Container(width: 20,),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
