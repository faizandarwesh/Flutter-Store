import 'package:flutter/material.dart';
import 'package:flutter_ui/custom_widgets/CustomAppBar.dart';
import 'package:flutter_ui/custom_widgets/ProductListTile.dart';
import 'package:flutter_ui/products/controller/ProductsController.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  final controller = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: 60,
        ),
        body: Obx(
          () => controller.isLoading.value
              ? Center(child: CircularProgressIndicator())
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,mainAxisExtent: 300),
                  itemCount: controller.products.length,
                  itemBuilder: (_, index) {
                    return ProductListTile(product: controller.products[index]);
                  }),
        ));
  }
}
