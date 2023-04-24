
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/model.dart';
import '../services/service.dart';
import 'controller.dart';

class HomeController extends BaseController{

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];

  Rx<HomeResponse> getData = HomeResponse().obs;
  RxList<HomeResponse> resultDataList = <HomeResponse>[].obs;
  var tabIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
   getHomeList();
   // debugPrint("0df init dara :${getHomeList()}");
  }

  //bottom NavBar Index
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  void getHomeList() async {
    loader.value = true;
    try {
      var response = await RemoteServices.getHomeList("Rajkot", "Gujarat", "India");
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        var data = jsonData['data'];
        if (data.isNotEmpty) {
          for (var i in data) {
            resultDataList.add(HomeResponse.fromJson(i));
          }
          debugPrint("List : ${resultDataList[0].data?.benner}");
          loader.value = false;
      // else if(response.statusCode == 401){
      //   await Fluttertoast.showToast(msg: 'Session expire! Please, Login again.');
      }}
    } catch (e) {
      loader.value = false;
      debugPrint("exception => $e");
    }
  }

}