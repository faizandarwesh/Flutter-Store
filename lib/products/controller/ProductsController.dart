import 'package:flutter_ui/products/model/Product.dart';
import 'package:flutter_ui/services/BaseClient.dart';
import 'package:flutter_ui/utils/Constants.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class ProductsController extends GetxController {
  var products = [].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  fetchProducts() async {
    try {
      isLoading(true);
      final response =
          await BaseClient().get("v1/products.json?brand=maybelline");
      if (response != null) {
        print(Constants.SUCCESS_MESSAGE);
        isLoading(false);
        products.addAll(productFromJson(response));
      } else {
        print(Constants.FAILURE_MESSAGE);
      }
    } on Exception catch (e) {
      print("Exception : $e");
    } finally {
      isLoading(false);
    }
  }
}
