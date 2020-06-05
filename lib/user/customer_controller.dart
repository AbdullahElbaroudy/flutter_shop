import 'package:fluttershop/order/order.dart';
import 'package:fluttershop/product/product.dart';
import 'package:fluttershop/user/customer.dart';


class CustomerController {

  Customer customer ;
  CustomerController(this.customer);

  void addToOrder(BaseOrder order) {
    this.customer.orders.add(order);
  }

  bool removeFromOrder(BaseOrder order) {
    return this.customer.orders.remove(order);
  }

  bool orderInOrders(BaseOrder order) {
    return this.customer.orders.contains(order);
  }

  bool productInWatchList(BaseProduct product) {
    return this.customer.watchList.contains(product);
  }

  void addToWatchList(BaseProduct product) {
    this.customer.watchList.add(product);
  }

  bool removeFromWatchList(BaseProduct product) {
    return this.customer.watchList.remove(product);
  }
}

