import 'package:flutter/material.dart';
import 'package:flutter_ui/products/model/Product.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: product.imageLink,
                child: Container(
                  width: double.infinity,
                  height: 400,
                  child: Image.network(product.imageLink,fit: BoxFit.cover,),),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(product.name,style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w700),),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(product.description,style: GoogleFonts.nunito(fontSize: 16,fontWeight: FontWeight.w700),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
