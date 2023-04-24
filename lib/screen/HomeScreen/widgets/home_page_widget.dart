import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_buy/screen/HomeScreen/widgets/custom_appBar.dart';
import 'package:ticket_buy/widgets/common_loader.dart';
import '../../../constant/constant.dart';
import '../../../controller/controller.dart';

class HomePageWidget extends StatelessWidget {
  static final controller = Get.find<HomeController>();

  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLoader(isLoad: controller.loader.value,
    body: Scaffold(
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
                  height: Get.height *0.29,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder:(context, index) {
                      return eventWidget();
                    },
                  ),
                ),
                //eventWidget(),

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
                  height: Get.height *0.29,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return                 eventWidget();
                    },),
                )



              ],
            ),
          ),
        ),
      ),
    ),
    );
  }

  Widget eventWidget(){
    return SizedBox(
      width: Get.width * 0.5,
      child: Card(
        shadowColor: ColorsConfig.colorLightGray,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),

        margin: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.network(
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: Get.width,
              decoration: const BoxDecoration(
                  color: ColorsConfig.colorLightBlue
              ),
              child: Text(
                  'Tum Zindagi Ban Gaye',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.eventTitleStyle
              ),
            ),

            const SizedBox(height: 5,),
            SizedBox(
              height: 35,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child:  Text("2 Feb 22 18:30:PM",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: CustomTextStyle.eventTimeStyle,
                      )),

                  const SizedBox(width: 10,),
                  Text("To", style: CustomTextStyle.eventToStyle,),
                  const SizedBox(width: 10,),
                  Flexible(
                      child:  Text("2 Feb 22 18:30:PM",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: CustomTextStyle.eventTimeStyle,
                      )),
                ],
              ),
            ),
            const Divider(
                height: 10.0,
                thickness: 1.0,
                indent: 10,
                endIndent: 10,
                color: ColorsConfig.colorLightGray),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(ImagePath.favoriteIcon, ),
                  Image.asset(ImagePath.shareIcon, scale: 25,),
                  Image.asset(ImagePath.userIcon, scale: 25,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
