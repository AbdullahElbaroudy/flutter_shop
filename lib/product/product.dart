import 'package:fluttershop/category/category.dart';
import 'package:fluttershop/category/category_controller.dart';
import 'package:fluttershop/discount/discount.dart';
import 'package:fluttershop/discount/discount_controller.dart';
import 'package:fluttershop/image/image.dart';
import 'package:fluttershop/image/image_controller.dart';
import 'package:fluttershop/product_option/option.dart';
import 'package:fluttershop/product_option/option_controller.dart';
import 'package:fluttershop/tag/tag.dart';
import 'package:fluttershop/tag/tag_controller.dart';

 class BaseProduct {
  String id;
  String title;
  String description;
  double price;
  double quantity;
  List<BaseImage> images;
  List<BaseOption> options;
  List<BaseCategory> categories;
  List<BaseTag> tags;
  List<BaseDiscount> discounts;

  BaseProduct(
    this.id,
    this.title,
    this.description,
    this.price,
    this.quantity,
    this.images,
    this.options,
    this.categories,
    this.tags,
    this.discounts,
  );

  BaseProduct.fromjson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject['id'];
    this.title = jsonObject['title'] ;
    this.description=jsonObject['deccription'] ; 
    this.price= jsonObject['price'];
    this.quantity = jsonObject['quantity'];
    this.images = ImageController.toImages(jsonObject['images']) ;
    this.options = OptionController.toOptions(jsonObject['options']) ;
    this.categories = CategoryController.toCategories(jsonObject['categories']) ;
    this.tags = TagController.toTags(jsonObject['tages']) ;
    this.discounts  = DiscountController.toDiscounts(jsonObject['discounts']);
  }
}
