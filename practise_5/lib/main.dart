import 'package:flutter/material.dart';
import 'package:shopping_cart/model/product.dart';
import 'package:shopping_cart/shopping_list.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Shopping App',
      home: ShoppingList(
        products: [
          Product(name: 'Eggs'),
          Product(name: 'Flour'),
          Product(name: 'Chocolate chips'),
        ],
      ),
    ),
  );
}

//https://docs.flutter.dev/ui#bringing-it-all-together
