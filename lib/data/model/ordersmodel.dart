class OrdersModel {
  String? sId;
  int? ordersId;
  String? ordersUsersid;
  String? ordersAddressid;
  int? ordersType;
  int? ordersPricedelivery;
  int? ordersPrice;
  int? ordersTotalprice;
  String? ordersCouponid;
  int? ordersPaymeentmethod;
  int? ordersStatus;
  String? ordersDatetime;
  int? iV;

  OrdersModel(
      {this.sId,
      this.ordersId,
      this.ordersUsersid,
      this.ordersAddressid,
      this.ordersType,
      this.ordersPricedelivery,
      this.ordersPrice,
      this.ordersTotalprice,
      this.ordersCouponid,
      this.ordersPaymeentmethod,
      this.ordersStatus,
      this.ordersDatetime,
      this.iV});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    ordersId = json['orders_id'];
    ordersUsersid = json['orders_usersid'];
    ordersAddressid = json['orders_addressid'];
    ordersType = json['orders_type'];
    ordersPricedelivery = json['orders_pricedelivery'];
    ordersPrice = json['orders_price'];
    ordersTotalprice = json['orders_totalprice'];
    ordersCouponid = json['orders_couponid'];
    ordersPaymeentmethod = json['orders_paymeentmethod'];
    ordersStatus = json['orders_status'];
    ordersDatetime = json['orders_datetime'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['orders_id'] = this.ordersId;
    data['orders_usersid'] = this.ordersUsersid;
    data['orders_addressid'] = this.ordersAddressid;
    data['orders_type'] = this.ordersType;
    data['orders_pricedelivery'] = this.ordersPricedelivery;
    data['orders_price'] = this.ordersPrice;
    data['orders_totalprice'] = this.ordersTotalprice;
    data['orders_couponid'] = this.ordersCouponid;
    data['orders_paymeentmethod'] = this.ordersPaymeentmethod;
    data['orders_status'] = this.ordersStatus;
    data['orders_datetime'] = this.ordersDatetime;
    data['__v'] = this.iV;
    return data;
  }
}