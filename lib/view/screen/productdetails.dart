import 'package:ecommerce_app/controller/productdetails_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/productdetails/priceandcount.dart';
import 'package:ecommerce_app/view/widget/productdetails/subitemslist.dart';
import 'package:ecommerce_app/view/widget/productdetails/toppageproductdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
        bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 40,
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColor.secondColor,
                onPressed: () {},
                child: const Text(
                  "Add To Cart",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))),
        body: ListView(children: [
          const TopProductPageDetails(),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("${controller.productsModel.productName}",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColor.fourthColor,
                      )),
              const SizedBox(height: 10),
              PriceAndCountItems(
                  onAdd: () {}, onRemove: () {}, price: "200.0", count: "2"),
              const SizedBox(height: 10),
              Text(
                  "${controller.productsModel.productDesc} ${controller.productsModel.productDesc} ${controller.productsModel.productDesc} ${controller.productsModel.productDesc} ${controller.productsModel.productDesc}",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 10),
              Text("Color",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColor.fourthColor,
                      )),
              const SizedBox(height: 10),
              const SubitemsList()
            ]),
          )
        ]));
  }
}
