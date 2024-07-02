import 'package:ecommerce_app/view/screen/offers.dart';
import 'package:ecommerce_app/view/screen/home.dart';
import 'package:ecommerce_app/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);  
}

class HomeScreenControllerImp extends HomeScreenController {

  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Settings'),
        )
      ],
    ),
    const OffersView(),
    const Settings()
  ];

  List  bottomappbar = [
    {
      "title": "home",
      "icon": Icons.home,
    },
    {
      "title": "na",
      "icon": Icons.notifications_active_outlined,
    },
    {
      "title": "profile",
      "icon": Icons.person,
    },
    {
      "title": "settings",
      "icon": Icons.settings,
    },
  ] ;  
  @override
  void changePage(int currentpage) {
    this.currentpage = currentpage;
    update();
  }
  
  
  
}