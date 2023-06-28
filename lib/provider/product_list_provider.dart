import 'package:e_canteen/models/add_cart_model.dart';
import 'package:e_canteen/models/products_model.dart';
import 'package:flutter/material.dart';
import '../core/live_data.dart';
import '../core/ui_state.dart';
import '../repositories/category_repository.dart';

class ProductListProvider extends ChangeNotifier {
  CategoryRepository categoryRepository;

  ProductListProvider({required this.categoryRepository});

  var productList = ProductsModel();
  LiveData<UIState<ProductsModel>> getProductData =
      LiveData<UIState<ProductsModel>>();

  LiveData<UIState<ProductsModel>> getProductLiveData() {
    return this.getProductData;
  }

//addCart
  var addCartModel = AddCartModel();
  LiveData<UIState<AddCartModel>> addCartData =
      LiveData<UIState<AddCartModel>>();

  LiveData<UIState<AddCartModel>> getAddCartLiveData() {
    return this.addCartData;
  }

  void initialState() {
    getProductData.setValue(Initial());
    addCartData.setValue(Initial());
    notifyListeners();
  }

  Future<void> products() async {
    try {
      getProductData.setValue(IsLoading());
      productList = await categoryRepository.getProductListData();
      if (productList.status == 200) {
        getProductData.setValue(Success(ProductsModel()));
      } else {
        getProductData.setValue(Failure(getProductData.toString()));
      }
    } catch (ex) {
      getProductData.setValue(Failure(ex.toString()));
    } finally {
      notifyListeners();
    }
    // return true;
  }

  Future<bool> addCart(dynamic product, dynamic quantity) async {
    try {
      addCartData.setValue(IsLoading());
      print(product+quantity);
      addCartModel = await categoryRepository.postAddCart(product, quantity);
      if (addCartModel.status == 200) {
        addCartData.setValue(Success(AddCartModel()));
        return true;
      } else {
        addCartData.setValue(Failure(addCartData.toString()));
        return false;
      }
    } catch (ex) {
      addCartData.setValue(Failure(ex.toString()));
      return false;
    } finally {
      notifyListeners();
    }
    // return true;
  }
}
