import 'package:flutter/material.dart';
import 'package:shopping_cart/models/product.dart';
import 'package:shopping_cart/product_list.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Shopping',
      home: ProductList(products: [
        Product(name: 'MacBook Air', count: 1),
        Product(name: 'Galaxy S24', count: 2),
        Product(name: 'Huawei P50 Pro', count: 1),
        Product(name: 'iPhone 13', count: 3),
      ]),
    ),
  );
}