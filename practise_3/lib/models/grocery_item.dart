import 'package:flutter/material.dart';
import 'package:practise_3/models/category.dart';

class GroceryItem {
  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });

  final String id;
  final String name;
  final int quantity;
  final Category category;

  String get itemName {
    return name;
  }

  int get itemQuantity {
    return quantity;
  }

  Color get itemColor {
    return category.color;
  }
}
