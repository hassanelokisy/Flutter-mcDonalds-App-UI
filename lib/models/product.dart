import 'package:flutter/cupertino.dart';

class Product {
  final String title, imageUrl;
  final double discount;

  Product({
    @required this.title,
    @required this.imageUrl,
    @required this.discount,
  });
}

List<Product> products = [
  Product(
    title: "Combo Meal",
    imageUrl: 'assets/images/combo_meal.png',
    discount: 20,
  ),
  Product(
    title: "Burgers & Sandwiches",
    imageUrl: 'assets/images/burgers_and_sandwiches.png',
    discount: 0,
  ),
  Product(
    title: "Happy Meal",
    imageUrl: 'assets/images/happy_meal.png',
    discount: 0,
  ),
  Product(
    title: "Beverages",
    imageUrl: 'assets/images/beverages.png',
    discount: 0,
  ),
  Product(
    title: "Chicken",
    imageUrl: 'assets/images/chicken.png',
    discount: 0,
  ),
  Product(
    title: "Snacks & Sides",
    imageUrl: 'assets/images/snacks_and_sides.png',
    discount: 0,
  ),
];
