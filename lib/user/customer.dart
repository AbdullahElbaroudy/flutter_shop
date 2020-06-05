import 'package:fluttershop/adress/adress.dart';
import 'package:fluttershop/order/order.dart';
import 'package:fluttershop/order/order_controller.dart';
import 'package:fluttershop/product/product.dart';
import 'package:fluttershop/product/product_controller.dart';
import 'package:fluttershop/user/user.dart';


class Customer extends User {
  List<BaseOrder> orders;
  List<BaseProduct> watchList;
  Address shippingAddress;
  Address billingAddress;

  Customer(
    String id,
    String firstName,
    String lastName,
    String email,
    String gender,
    String phone,
    Address shippingAddress,
    Address billingAddress,
    List<BaseProduct> watchList,
    List<BaseOrder> orders,
  ) : super(id, firstName, lastName, email, gender, phone) {
    this.shippingAddress = shippingAddress;
    this.billingAddress = billingAddress;
    this.watchList = watchList;
    this.orders = orders;
  }

  Customer.fromJson(Map<String, dynamic> jsonObject)
      : super(
          jsonObject['id'],
          jsonObject['firstName'],
          jsonObject['LastName'],
          jsonObject['email'],
          jsonObject['gender'],
          jsonObject['phone'],
        ) {
    this.shippingAddress = Address.fromJson(jsonObject['shipping_address']);
    this.billingAddress = Address.fromJson(jsonObject['billing_address']);
    this.watchList = ProductController.toProducts(jsonObject['watch_list']);
    this.orders =OrderController.toOrders(jsonObject['orders']);
  }
}
