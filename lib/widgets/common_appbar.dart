import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? leadingIcon;
  final double? iconSize;
  final double? actionIconSize;
  final double? leadingWidth;
  final String? title;
  final String? titleIcon;
  final double? titleIconSize;
  final VoidCallback? leadingOnTap;
  final String Function(String)? onChange;
  final VoidCallback? actionOnTap;
  final VoidCallback? actionOnTap2;
  final String? actionIcon;
  //final String? actionIcon2;
  final bool? titleIconVisible;

  const CommonAppBar({
    Key? key,
    this.leadingIcon,
    //this.secondVisible = false,
    this.iconSize,
    this.actionIconSize,
    this.titleIconSize,
    this.title,
    this.titleIcon,
    this.titleIconVisible,
    this.leadingOnTap,
    this.onChange,
    this.actionIcon,
    //this.actionIcon2,
    this.actionOnTap,
    this.actionOnTap2,
    this.leadingWidth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: ColorsConfig.colorWhite,
      elevation: 0,

      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
                    visible:  titleIconVisible ! ,
                      child: GestureDetector(
                          onTap: actionOnTap2 ?? (){
                            //Get.back();
                          },
                          child: titleIcon != null ? Image.asset(titleIcon!,
                            color:  ColorsConfig.colorBlack,
                            scale: titleIconSize ??  25.0,): Container()
          )),
          SizedBox(width: titleIcon != null ?  10 :0,),
          Text(title ?? '', style: CustomTextStyle.eventTimeStyle),
        ],
      ),
      leading: GestureDetector(
        onTap: leadingOnTap ?? (){
          Get.back();
        },
        child: leadingIcon != null
            ? Image.asset(
          leadingIcon!,
          color:  ColorsConfig.colorLightGray,
          scale: iconSize ??  25.0,
        )
            : Container(),
      ),
      leadingWidth: leadingWidth,

      actions: [
        Row(
          children: [
            GestureDetector(
              onTap: actionOnTap ?? (){
                //Get.back();
              },
              child: actionIcon != null ?
              Image.asset(actionIcon!, scale: actionIconSize ??  25.0,
              ) : Container()

            ) ,
    //        SizedBox(width: actionIcon2 != null ?  20 :0,),
    //         Visibility(
    //           visible:  secondVisible ! ,
    //             child: GestureDetector(
    //                 onTap: actionOnTap2 ?? (){
    //                   //Get.back();
    //                 },
    //                 child: actionIcon2 != null ? Container(
    //                     child: Image.asset(actionIcon2!,
    //                       color: Theme.of(context).brightness == Brightness.light ? ColorsConfig.colorGray : ColorsConfig.colorDarkGray,
    //                       scale: actionIconSize2 ??  25.0,)): Container()
    // ))
          ],
        ),
        const SizedBox(width: 10,),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
