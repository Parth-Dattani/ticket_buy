import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class OnBoardController extends BaseController{

  final pageController = PageController(
    initialPage: 0,
  );

  RxInt currentPage = 0.obs;
  RxList<String> images = [
    'assets/images/onBoard1.png',
    'assets/images/onBoard2.png',
    'assets/images/onBoard3.png',
  ].obs;

  RxList<String> title = [
    'Search & Find',
    'buy tickets',
    'hassle-free refund'
  ].obs;

  RxList<String> subTitle = [
    'Search & find upcoming events nearby from a wide variety of venues and organizers.',
    'Buy tickets from anywhere around the world, from your phone hassle-free.',
    'Get easy refund if you find later that you can’t make it to the event!'
  ].obs;

}