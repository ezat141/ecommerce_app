import 'package:ecommerce_app/view/screen/home.dart';
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
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Profile'),
        )
      ],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Favorite'),
        )
      ],
    ),
  ];

  List  titlebottomappbar = [
    "home" , 
    "settings" , 
    "profile" , 
    "favorite"
  ] ;  
  @override
  void changePage(int currentpage) {
    this.currentpage = currentpage;
    update();
  }
  
  
  
}