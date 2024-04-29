import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce_app/data/datasource/remote/products_data.dart';
import 'package:ecommerce_app/data/model/productsmodel.dart';
import 'package:get/get.dart';

abstract class ProductsController extends GetxController {
  intialData();
  changeCat(int val, String catval);
  getItems(String categoryid);
  goToPageProductDetails(ProductsModel productsModel);
}

class ProductsControllerImp extends ProductsController {
  List categories = [];
  String? catid;
  int? selectedCat;

  ProductsData testData = ProductsData(Get.find());
  List data = [];

  late StatusRequest statusRequest;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
    getItems(catid!);
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getItems(catid!);
    update();
  }

  @override
  getItems(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(categoryid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        Get.defaultDialog(title: "ُWarning", middleText: "Email Not Found");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToPageProductDetails(ProductsModel productsModel) {
    Get.toNamed("productdetails", arguments: {"productsModel": productsModel});
  }
}
