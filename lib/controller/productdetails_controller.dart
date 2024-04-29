import 'package:ecommerce_app/data/model/productsmodel.dart';
import 'package:get/get.dart';

abstract class PrductsDetailsController extends GetxController {
  intialData();
}

class ProductDetailsControllerImp extends PrductsDetailsController {
  late ProductsModel productsModel;
  @override
  intialData() {
    productsModel = Get.arguments['productsModel'];
  }

  List subitems = [
    {"name": "red", "id": 1, "active": '0'},
    {"name": "yallow", "id": 2, "active": '0'},
    {"name": "black", "id": 3, "active": '1'}
  ];

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
