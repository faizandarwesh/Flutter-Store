import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/products/model/Product.dart';
import 'package:flutter_ui/products/ui/ProductDetailScreen.dart';
import 'package:shimmer/shimmer.dart';

class ProductListTile extends StatelessWidget {
  final Product product;
  final bool isLoading;

  ProductListTile({required this.product, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ProductDetailScreen(
                    product: product,
                  ))),
      child: Hero(
        tag: product.imageLink,
        child: isLoading
            ? Card(
                elevation: 8,
                margin: const EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 200,
                        height: 180,
                        color: Colors.grey[300],
                      ),
                    ),
                    ListTile(
                      title: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          height: 16,
                          color: Colors.grey[300],
                        ),
                      ),
                      subtitle: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          height: 16,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Card(
                elevation: 8,
                margin: const EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.network(
                        product.imageLink,
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(
                          product.name,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16),
                        ),
                        subtitle: Text(
                          '\$${product.price}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
