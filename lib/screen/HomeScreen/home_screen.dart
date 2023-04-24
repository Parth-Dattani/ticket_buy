import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_buy/controller/controller.dart';
import 'widgets/widget.dart';

class HomeScreen extends GetView<HomeController> {
  static const pageId = "/HomeScreen";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Obx(
              ()=> IndexedStack(
            sizing: StackFit.expand,
            index: controller.tabIndex.value,
            children: [
              const HomePageWidget(),
               Container(child: const Center(child: Text("No Ticket Found")),),
               Container(child: const Center(child: Text("No Favorite Found")),),
               Container(child: const Center(child: Text("No User Found")),),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
      Obx(()=> bottomNavBar(tabIndex: controller.tabIndex.value,changeTabIndex: controller.changeTabIndex, context: context)),
    );
  }


}

