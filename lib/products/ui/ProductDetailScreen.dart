import 'package:flutter/material.dart';
import 'package:flutter_ui/products/model/Product.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    var counter = 1;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.imageLink,
                child: Container(
                  width: double.infinity,
                  height: 400,
                  child: Image.network(
                    product.imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\$${product.price}',
                      style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                      height: 60,
                      margin: EdgeInsets.only(left: 16),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border(
                            top: BorderSide(width: 2, color: Colors.blue[300]!),
                            bottom:
                            BorderSide(width: 2, color: Colors.blue[300]!),
                            left:
                            BorderSide(width: 2, color: Colors.blue[300]!),
                            right:
                            BorderSide(width: 2, color: Colors.blue[300]!)),
                      ),
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove, color: Colors.blue),
                      )),
                  Text(
                    "$counter",
                    style: GoogleFonts.nunitoSans(
                        fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 60,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border(
                            top: BorderSide(width: 2, color: Colors.blue[300]!),
                            bottom:
                            BorderSide(width: 2, color: Colors.blue[300]!),
                            left:
                            BorderSide(width: 2, color: Colors.blue[300]!),
                            right:
                            BorderSide(width: 2, color: Colors.blue[300]!)),
                      ),
                      child: IconButton(
                        onPressed: (){

                        },
                        icon: Icon(Icons.add, color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Description",
                  style: GoogleFonts.lato(
                      fontSize: 22,fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.description,
                  style: GoogleFonts.nunito(
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 60,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border(
                            top: BorderSide(width: 2, color: Colors.blue[300]!),
                            bottom:
                                BorderSide(width: 2, color: Colors.blue[300]!),
                            left:
                                BorderSide(width: 2, color: Colors.blue[300]!),
                            right:
                                BorderSide(width: 2, color: Colors.blue[300]!)),
                      ),
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add_shopping_cart, color: Colors.blue),
                      )),
                  Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 64, vertical: 8),
                        child: TextButton(
                            onPressed: null,
                            child: Text(
                              "BUY NOW",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                      )),
                ],
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
