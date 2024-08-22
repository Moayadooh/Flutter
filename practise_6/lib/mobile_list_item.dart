import 'package:flutter/material.dart';
import 'package:shopping_cart/models/mobile.dart';

typedef AddMobileCallback = Function();

class MobileListItem extends StatelessWidget {
  const MobileListItem({
    required this.mobile,
    required this.removeMobile,
    super.key,
  });

  final Mobile mobile;
  final AddMobileCallback removeMobile;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: removeMobile,
      leading: const Icon(Icons.mobile_friendly),
      title: Text(mobile.name),
      tileColor: Colors.blue[300],
    );
  }
}
