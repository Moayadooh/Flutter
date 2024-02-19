import 'package:flutter/material.dart';
import 'package:practise_3/data/dummy_items.dart';
import 'package:practise_3/groceries_item.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(groceryItems[index].id),
          child: GroceriesItem(
            groceryItem: groceryItems[index],
          ),
        ),
      ),
    );
  }
}
