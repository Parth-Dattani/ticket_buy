import 'package:get/get.dart';
import 'package:ticket_buy/binding/onboard_binding.dart';
import 'package:ticket_buy/screen/loginScreen/login_screen.dart';
import 'package:ticket_buy/screen/screen.dart';
import 'binding/binding.dart';

final List<GetPage> appPage = [
  GetPage(
      name: OnBoardScreen.pageId,
      page: ()=> const OnBoardScreen(),
      binding: OnBoardBinding()
  ),
  GetPage(
      name: HomeScreen.pageId,
      page: ()=> const HomeScreen(),
    binding: HomeBinding()
  ),

  GetPage(
      name: LoginScreen.pageId,
      page: ()=>  LoginScreen(),
      binding: LoginBinding()
  ),

];