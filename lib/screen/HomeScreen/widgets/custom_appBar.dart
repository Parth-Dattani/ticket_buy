import 'package:flutter/material.dart';
import '../../../constant/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});



  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: ColorsConfig.colorWhite,
      elevation: 0,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              boxShadow: const[
                BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 0,
                    color: ColorsConfig.colorGrey
                )
              ],
              borderRadius: BorderRadius.circular(50),
              color: ColorsConfig.colorLightGray
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorsConfig.colorWhite,
                        boxShadow: [
                          BoxShadow(
                              color: ColorsConfig.colorGrey,
                              blurRadius: 2,
                              spreadRadius: 0.4
                          )
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(ImagePath.mapIcon,),
                    )),

                Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorsConfig.colorWhite,
                        boxShadow: [
                          BoxShadow(
                              color: ColorsConfig.colorGrey,
                              blurRadius: 2,
                              spreadRadius: 0.4
                          )
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(ImagePath.enIcon,),
                    )),

              ],
            ),
          ),
        ),
      ),
      title: Center(child: Image.asset(ImagePath.appLogo, scale: 10,),),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
                boxShadow: const[
                  BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 0,
                      color: ColorsConfig.colorGrey
                  )
                ],
                borderRadius: BorderRadius.circular(50),
                color: ColorsConfig.colorLightGray
            ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsConfig.colorWhite,
                          boxShadow: [
                            BoxShadow(
                                color: ColorsConfig.colorGrey,
                                blurRadius: 2,
                                spreadRadius: 0.4
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(ImagePath.filterIcon,),
                      )),

                  Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsConfig.colorWhite,
                          boxShadow: [
                            BoxShadow(
                                color: ColorsConfig.colorGrey,
                                blurRadius: 2,
                                spreadRadius: 0.4
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(ImagePath.notificationIcon,),
                      )),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
