import 'dart:convert';
import 'package:e_canteen/models/add_cart_model.dart';
import 'package:e_canteen/models/products_model.dart';
import '../utilities/api_helpers.dart';

Resource<ProductsModel> getProductListApi() {
  return Resource(
      url: '/products?page=1',
      parse: (response) {
        Map<String, dynamic> getProductListMap = json.decode(response.body);
        ProductsModel productListResult = ProductsModel.fromJson(getProductListMap);
        return productListResult;
      });
}

Resource<AddCartModel> postAddCartApi(
    dynamic productId, dynamic quantity) {
  return Resource(
      url: '/add-to-cart',
      body: json.encode({
        'product': productId,
        'quantity': quantity,
      }),
      parse: (response) {
        print(response.body);
        Map<String, dynamic>addCartMap = json.decode(response.body);
        AddCartModel addCartResult = AddCartModel.fromJson(addCartMap);
        return addCartResult;
      });
}