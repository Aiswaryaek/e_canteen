import '../services/category_services.dart';
import '../services/web_service.dart';

class CategoryRepository {
  var webService;

  CategoryRepository() {
    this.webService = Webservice();
  }
  Future getProductListData() => webService?.get(getProductListApi());
  Future postAddCart(dynamic product, dynamic quantity) =>
      webService?.postJson(postAddCartApi(product, quantity));
}