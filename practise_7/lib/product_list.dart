import 'package:flutter/material.dart';
import 'package:shopping_cart/models/product.dart';
import 'package:shopping_cart/product_list_item.dart';

class ProductList extends StatefulWidget {
  const ProductList({required this.products, super.key});
  final List<Product> products;

  @override
  State<ProductList> createState() {
    return _ProductList();
  }
}

class _ProductList extends State<ProductList> {
  List<Product> _products = [];

  @override
  void initState() {
    _products = List.from(widget.products);
    super.initState();
  }

  void addQty(Product product) {
    setState(() {
      _products.singleWhere((item) {
        return item.name == product.name;
      }).count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
        ),
        title: const Center(
          child: Text('Products List'),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: _products.map((product) {
          return ProductListItem(product: product, addQty: addQty);
        }).toList(),
      ),
    );
  }
}
