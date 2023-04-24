import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import '../../../constant/constant.dart';

class EventListWidget extends StatelessWidget {

  final String title;
  final String startDate;
  final String endDate;
  final String eventLink;
  final String image;

  const EventListWidget({Key? key,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.eventLink,
    required this.image
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.5,
      child: Card(
        shadowColor: ColorsConfig.colorLightGray,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        //margin: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: Get.width,
              decoration: const BoxDecoration(
                  color: ColorsConfig.colorLightBlue
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text(
                    title,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.eventTitleStyle
                ),
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

                      child:  Text(DateFormat('dd, MMM yy HH:MM a').format(
    DateTime.parse(startDate)),
                      textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: CustomTextStyle.eventTimeStyle
    ),
                  ),

                  const SizedBox(width: 10,),
                  Text("To", style: CustomTextStyle.eventToStyle,),
                  const SizedBox(width: 10,),
                  Flexible(
                      child: Text(DateFormat('dd, MMM yy HH:MM a').format(
                          DateTime.parse(startDate)),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: CustomTextStyle.eventTimeStyle
                      ),),
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
                  GestureDetector(
                    onTap: (){
                      Share.share(eventLink, subject: "Today's News");
                    },
                      child: Image.asset(ImagePath.shareIcon, scale: 25,)),
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

