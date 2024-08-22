import 'package:flutter/material.dart';
import 'package:shopping_cart/mobile_list.dart';
import 'package:shopping_cart/models/mobile.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Mobile Shop',
      home: MobileList(
        mobiles: [
          Mobile(name: 'iPhone'),
          Mobile(name: 'Huawei'),
          Mobile(name: 'Samsung'),
        ],
      ),
    ),
  );
}
