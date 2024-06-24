
import 'package:ecommerce_app/controller/orders/pending_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/model/ordersmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardOrdersList extends GetView<OrdersPendingController> {
  final OrdersModel listdata;
  const CardOrdersList({Key? key, required this.listdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order Number : #${listdata.ordersId} ",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Divider(),
              Text(
                  "Order Type : ${controller.printOrderType(listdata.ordersType!.toString())}"),
              Text("Order Price : ${listdata.ordersPrice} \$ "),
              Text("Delivery Price : ${listdata.ordersPricedelivery} \$ "),
              Text(
                  "Payment Method : ${controller.printPaymentMethod(listdata.ordersPaymeentmethod!.toString())} "),
              Text(
                  "Order Status : ${controller.printOrderStatus(listdata.ordersStatus!.toString())} "),
              const Divider(),
              Row(
                children: [
                  Text("Total Price : ${listdata.ordersTotalprice} \$ ",
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  MaterialButton(
                    onPressed: () {
                    },
                    color: AppColor.thirdColor,
                    textColor: AppColor.secondColor,
                    child: const Text("Details"),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
