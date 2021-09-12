import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/products/model/Product.dart';
import 'package:flutter_ui/products/ui/ProductDetailScreen.dart';

class GroceriesListTile extends StatelessWidget {
  final Product product;
  // final QueryDocumentSnapshot<Product> data;

  GroceriesListTile({required this.product});

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
        child: Card(
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
