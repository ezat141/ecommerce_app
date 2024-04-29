import 'package:ecommerce_app/controller/products_controller.dart';
import 'package:ecommerce_app/core/class/handlingdataview.dart';
import 'package:ecommerce_app/data/model/productsmodel.dart';
import 'package:ecommerce_app/view/widget/home/customappbar.dart';
import 'package:ecommerce_app/view/widget/products/customlistitems.dart';
import 'package:ecommerce_app/view/widget/products/listcategoirseproducts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsControllerImp());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
              titleappbar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {}),
          const SizedBox(height: 20),
          const ListCategoriesProducts(),
          GetBuilder<ProductsControllerImp>(
            builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.7),
                  itemBuilder: (BuildContext context, index) {
                    return CustomListProducts(
                      productsModel:
                          ProductsModel.fromJson(controller.data[index]),
                    );
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
