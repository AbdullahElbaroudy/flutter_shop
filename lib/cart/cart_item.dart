import 'package:fluttershop/product/product.dart';
abstract class BaseCartItem{

  BaseProduct product;
  double quantity ;

  BaseCartItem(this.product, this.quantity);

  BaseCartItem.fromJson(Map<String,dynamic>jsonObject){
    this.product = BaseProduct.fromjson(jsonObject['product']) ;
    this.quantity = jsonObject['quanity'];
  }
 double discount(){

 }

}