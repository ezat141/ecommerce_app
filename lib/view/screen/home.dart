import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/class/handlingdataview.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/widget/home/customappbar.dart';
import 'package:ecommerce_app/view/widget/home/customcardhome.dart';
import 'package:ecommerce_app/view/widget/home/customtitlehome.dart';
import 'package:ecommerce_app/view/widget/home/listcategorieshome.dart';
import 'package:ecommerce_app/view/widget/home/listproductshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(

                        titleappbar: "Find Product",
                        onPressedIcon: () {},
                        onPressedSearch: () {} , 
                        onPressedIconFavorite: (){
                          Get.toNamed(AppRoute.myfavroite);
                        },
                        ),
                    const CustomCardHome(
                        title: "A summer surprise", body: "Cashback 20%"),
                    const CustomTitleHome(title: "Categories"),
                    const ListCategoriesHome(),
                    const CustomTitleHome(title: "Product for you"),
                    const ListProductsHome(),
                    const CustomTitleHome(title: "Offer"),
                    const ListProductsHome(),
                  ],
                ))));
  }
}