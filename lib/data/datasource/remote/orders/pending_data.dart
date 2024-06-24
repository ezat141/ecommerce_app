import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/linkapi.dart';

class OrdersPendingData {
  Crud crud;
  OrdersPendingData(this.crud);
  getData(String userid) async {
    var response =
        await crud.postData(AppLink.pendingorders, {"orders_usersid": userid});
    return response.fold((l) => l, (r) => r);
  }
}
