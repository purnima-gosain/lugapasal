import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Straight jeans",
    price: 234,
    size: 30,
    description: dummyText,
    image: "assets/images/jeans.png",
  ),
  Product(
    id: 2,
    title: "Belt jeans",
    price: 234,
    size: 36,
    description: dummyText,
    image: "assets/images/jeans2.png",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/jeans_3.png",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 26,
    description: dummyText,
    image: "assets/images/jeans_4.png",
  ),
  Product(
    id: 5,
    title: "Dark",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/jeans_5.png",
  ),
  Product(
    id: 6,
    title: "Casual",
    price: 234,
    size: 34,
    description: dummyText,
    image: "assets/images/jeans_6.png",
  ),
];

String dummyText =
    "Jeans are made of denim. The above product is pure denim. It is high quality product. It can be washed by hand or by washing machines. ";
