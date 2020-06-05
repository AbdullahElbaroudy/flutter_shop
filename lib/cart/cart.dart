import 'package:fluttershop/cart/base_cart_item_controller.dart';
import 'package:fluttershop/cart/cart_item.dart';

 class BaseCart{

    List<BaseCartItem> items;
  
    BaseCart.fromJson(Map<String,dynamic>jsonObject){
      this.items = CartItemController.toCartItems(jsonObject['items']);
    }

}