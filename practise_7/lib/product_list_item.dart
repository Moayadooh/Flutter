import 'package:flutter/material.dart';
import 'package:shopping_cart/models/product.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({
    required this.product,
    required this.addQty,
    super.key,
  });

  final Product product;
  final Function(Product) addQty;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: ListTile(
        leading: const Icon(Icons.circle_sharp),
        title: Text('${product.name}: ${product.count}'),
        onTap: () {
          addQty(product);
        },
      ),
    );
  }
}
