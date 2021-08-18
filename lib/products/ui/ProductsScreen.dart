import 'package:flutter/material.dart';
import 'package:flutter_ui/custom_widgets/CustomAppBar.dart';
import 'package:flutter_ui/custom_widgets/ProductListTile.dart';
import 'package:flutter_ui/products/controller/ProductsController.dart';
import 'package:flutter_ui/products/model/Product.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  final controller = Get.put(ProductsController());
  final product = Product(id: 1,description: "Description",imageLink: "",name: "Maybelline",price: "32");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: 60,
        ),
        body: Obx(
          () => controller.isLoading.value
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 300),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return ProductListTile(product:product,isLoading: controller.isLoading.value);
                  })
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 300),
                  itemCount: controller.products.length,
                  itemBuilder: (_, index) {
                    return ProductListTile(product: controller.products[index],isLoading: controller.isLoading.value,);
                  }),
        ));
  }
}
