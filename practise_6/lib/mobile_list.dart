import 'package:flutter/material.dart';
import 'package:shopping_cart/mobile_list_item.dart';
import 'package:shopping_cart/models/mobile.dart';

class MobileList extends StatefulWidget {
  const MobileList({required this.mobiles, super.key});
  final List<Mobile> mobiles;

  @override
  State<MobileList> createState() {
    return _MobileList();
  }
}

class _MobileList extends State<MobileList> {
  List<Mobile> _mobiles = [];

  @override
  void initState() {
    _mobiles = List.from(widget.mobiles);
    super.initState();
  }

  void addMobile() {
    setState(() {
      _mobiles.add(const Mobile(name: 'xxx'));
    });
  }

  void removeMobile() {
    setState(() {
      _mobiles.remove(const Mobile(name: 'xxx'));
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
        title: const Text('Mobile List'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: _mobiles.map((mobile) {
          return MobileListItem(
            mobile: mobile,
            removeMobile: removeMobile,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addMobile,
        child: const Icon(Icons.add),
      ),
    );
  }
}
