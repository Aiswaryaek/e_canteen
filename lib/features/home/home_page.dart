// ignore_for_file: prefer_const_constructors

import 'package:e_canteen/models/products_model.dart';
import 'package:e_canteen/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../core/ui_state.dart';
import '../../models/add_cart_model.dart';
import '../../provider/product_list_provider.dart';
import '../../repositories/category_repository.dart';
import '../../styles/textstyles.dart';
import '../../utilities/shared_preferences.dart';
import '../../widgets/order_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductListProvider productListProvider =
  ProductListProvider(categoryRepository: CategoryRepository());
  String date = DateFormat.yMMMMd('en_US').format(DateTime.now());
  List<Cart> _cart = [];
  List<ProductList> product = [];

  void onAddCart(id) async {
    bool response = await productListProvider.addCart(id, '1');
    if (response) {
      dynamic index = _cart.indexWhere((item) => item.id == id);
      if (index != -1) {
        _cart[index].qty = (_cart[index].qty! + 1);
      } else {
        _cart.add(Cart(id: id, qty: 1));
      }
      setState(() {
        _cart = _cart;
      });
      _getTotalItemPrice(id, 1);
      final snackBar = SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: whiteColor,
        content: SizedBox(
          height: 30,
          child: Align(
              alignment: Alignment.center,
              child: Text('Item added to cart Successfully',
                  style: orderButtonText)),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      final snackBar = SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: whiteColor,
        content: SizedBox(
          height: 30,
          child: Align(
              alignment: Alignment.center,
              child: Text('Something went wrong!!', style: orderButtonText)),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  dynamic productIndex;

  double _getTotalItemPrice(id, qty) {
    int index = _cart.indexWhere((element) => element.id == id);
    if (index != -1) {
        product = productIndex;
      return double.parse(product[index].price.toString()) * qty;
    }
    return 0;
  }

  _getTotalAmount() {
    double totalAmount = 0;
    for (var item in _cart) {
      totalAmount += _getTotalItemPrice(item.id, item.qty);
    }
    return totalAmount.toString();
  }


  @override
  void initState() {
    productListProvider.products();
    productListProvider.initialState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: whiteColor,
          body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
            child: productsWidget(),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            height: 68,
            color: greenButtonColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total ₹ '+ _getTotalAmount().toString(),
                  style: totalText,
                ),
                orderButton(context, 'Place Order', dispose)
              ],
            ),
          ),
        ));
  }

  Widget productsWidget() {
    return ChangeNotifierProvider<ProductListProvider>(
      create: (ctx) {
        return productListProvider;
      },
      child: Consumer<ProductListProvider>(
        builder: (ctx, data, _) {
          var state = data.getProductLiveData().getValue();
          print(state);
          if (state is IsLoading) {
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 1.3,
              child: Center(
                child: CircularProgressIndicator(
                  color: greenButtonColor,
                ),
              ),
            );
          } else if (state is Success) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    date,
                    style: textFieldInputStyle,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Canteen',
                  style: homeHeadTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, _) =>
                    const SizedBox(
                      height: 5,
                    ),
                    itemCount: data.productList.products!.data!.length,
                    itemBuilder: (context, index) {
                      productIndex = data.productList.products!.data;
                      return
                        ListTile(
                          contentPadding: EdgeInsets.only(left: -6, right: -6),
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: Image(
                                image: NetworkImage(
                                  'http://${data.productList.products?.data![index].coverImage}',
                              )),),
                          title: Transform.translate(
                              offset: Offset(-5, 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      '${data.productList.products?.data![index]
                                          .name}',
                                      style: labelTextStyle,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 58,
                                  )
                                ],
                              )),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Transform.translate(
                                offset: Offset(-5, -5),
                                child: Text(
                                    '${data.productList.products?.data![index]
                                        .price}' +
                                        ' ₹',
                                    style: labelTextStyle),
                              ),
                              SizedBox(
                                height: 28,
                                width: 72,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15)),
                                    backgroundColor: greenButtonColor,
                                  ),
                                  onPressed: () {
                                    onAddCart(
                                        '${data.productList.products
                                            ?.data![index].id}');
                                  },
                                  child: Transform.translate(
                                    offset: Offset(0, -3),
                                    child: Text(
                                      'Add to cart',
                                      style: addCartButtonText,
                                    ),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                  offset: Offset(0, -16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          child: Icon(Icons.remove,
                                              size: 16,
                                              color: greenButtonColor),
                                          onTap: () async {}),
                                      SizedBox(width: 8),
                                      Container(
                                          width: 31,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              borderRadius: BorderRadius
                                                  .circular(6),
                                              border: Border.all(
                                                  color: greenButtonColor)),
                                          child: Center(
                                            child: Text(
                                              '1',
                                              style: labelTextStyle,
                                            ),
                                          )),
                                      SizedBox(width: 8),
                                      InkWell(
                                        child: Icon(Icons.add,
                                            size: 16, color: greenButtonColor),
                                        onTap: () {},
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        );
                    }
                ),
              ],
            );
          } else if (state is Failure) {
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 1.3,
              child: Center(
                child: Text(
                  'No products found🥲',
                  style: labelTextStyle,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
