import 'package:flutter/material.dart';
import 'package:practise_6/mobile_list.dart';
import 'package:practise_6/models/mobile.dart';

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
