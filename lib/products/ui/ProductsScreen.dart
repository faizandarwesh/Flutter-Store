import 'package:flutter/material.dart';
import 'package:flutter_ui/custom_widgets/CustomAppBar.dart';
import 'package:flutter_ui/custom_widgets/CustomDrawer.dart';
import 'package:flutter_ui/custom_widgets/ProductListTile.dart';
import 'package:flutter_ui/products/controller/ProductsController.dart';
import 'package:flutter_ui/products/model/Product.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  final controller =
      Get.put(ProductsController()); //initialization of GetX ProductController
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final product = Product(
      id: 1,
      description: "Description",
      imageLink:
          "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
      name: "Maybelline",
      price: "32");

  //default product object for shimmer effect null object issue

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          height: 60,
          globalKey: _scaffoldKey,
        ),
        drawer: CustomDrawer(),
        body: Obx(
          () => controller.isLoading
                  .value //if isLoading is True then show Shimmer effect else show Product List
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 300),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return ProductListTile(
                        product: product,
                        isLoading: controller.isLoading.value);
                  })
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 300),
                  itemCount: controller.products.length,
                  itemBuilder: (_, index) {
                    return ProductListTile(
                      product: controller.products[index],
                      isLoading: controller.isLoading.value,
                    );
                  }),
        ));
  }
}
