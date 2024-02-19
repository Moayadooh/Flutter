import 'package:flutter/material.dart';
import 'package:practise_3/models/grocery_item.dart';

class GroceriesItem extends StatelessWidget {
  const GroceriesItem({required this.groceryItem, super.key});

  final GroceryItem groceryItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: DecoratedBox(
              decoration: BoxDecoration(color: groceryItem.itemColor),
            ),
          ),
          const SizedBox(width: 32),
          Text(groceryItem.itemName),
          const Spacer(),
          Text(groceryItem.itemQuantity.toString()),
        ],
      ),
    );
  }
}
