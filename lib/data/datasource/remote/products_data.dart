import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/linkapi.dart';

class ProductsData {
  Crud crud;
  ProductsData(this.crud);
  getData(String id) async {
    try {
      var dio = Dio();
      // Set authentication token in headers
      dio.options.headers['Authorization'] = 'Bearer your_token_here';

      var response =
          await crud.postData(AppLink.products, {"category_id": id.toString()});
      return response.fold((l) => throw l, (r) => r);
    } catch (e) {
      // Handle Dio errors or other exceptions
      print("Error occurred during HTTP request: $e");
      throw e;
      
    }
  }
}
