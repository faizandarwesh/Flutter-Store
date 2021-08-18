// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageLink,
    required this.description,
    });

  int id;
  String name;
  String price;
  String imageLink;
  String description;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    imageLink: json["image_link"],
    description: json["description"],
    );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "image_link": imageLink,
    "description": description,
    };
}
