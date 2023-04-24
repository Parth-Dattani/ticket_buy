import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/constant.dart';

Widget bottomNavBar({ tabIndex,  changeTabIndex, context}) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: tabIndex,
    selectedItemColor: ColorsConfig.colorBlue,
    selectedFontSize: 14,
    unselectedFontSize: 14,
    elevation: 2,
    onTap: changeTabIndex,
    items: [
      BottomNavigationBarItem(
        label:  '',
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Image.asset(
            ImagePath.searchIcon,
            scale: 25,
            color: tabIndex == 0 ? ColorsConfig.colorBlue : ColorsConfig.colorBlack,
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Image.asset(
            ImagePath.ticketIcon,
            scale: 25,
            color: tabIndex == 1 ? ColorsConfig.colorBlue : ColorsConfig.colorBlack,
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Image.asset(
            ImagePath.favoriteOutlineIcon,
            scale: 20,
            color: tabIndex == 2 ? ColorsConfig.colorBlue : ColorsConfig.colorBlack,
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Image.asset(
            ImagePath.profileIcon,
            scale: 20,
            color: tabIndex == 3 ? ColorsConfig.colorBlue : ColorsConfig.colorBlack,
          ),
        ),
      ),
    ],
  );
}
