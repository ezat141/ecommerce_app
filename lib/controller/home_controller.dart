import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/remote/home_data.dart';
import 'package:ecommerce_app/data/model/productsmodel.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToItems(List categories, int selectedCat, String categoryid);
  goToPageProductDetails(ProductsModel productsModel);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  String titleHomeCard = "";
  String bodyHomeCard = "";
  int? deliveryTime;

  HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  List products = [];
  List settingsdata = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        products.addAll(response['products']);
        settingsdata.addAll(response['settings']);
        titleHomeCard = settingsdata[0]['setting_name'];
        bodyHomeCard = settingsdata[0]['settings_bodyhome'];
        deliveryTime = settingsdata[0]['settings_deliverytime'];
        myServices.sharedPreferences
            .setString("deliverytime", deliveryTime.toString());
      } else {
        Get.defaultDialog(title: "ُWarning", middleText: "Email Not Found");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.products, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });
  }

  @override
  goToPageProductDetails(ProductsModel productsModel) {
    Get.toNamed("productdetails", arguments: {"productsModel": productsModel});
  }
}
