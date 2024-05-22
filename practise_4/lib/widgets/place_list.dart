import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practise_4/models/place.dart';
import 'package:practise_4/providers/places_provider.dart';
import 'package:practise_4/widgets/new_item.dart';

class PlaceList extends ConsumerStatefulWidget {
  const PlaceList({super.key});

  @override
  ConsumerState<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends ConsumerState<PlaceList> {
  final List<Place> _places = [];
  void _addItem() async {
    final newItem = await Navigator.of(context).push<Place>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );

    if (newItem == null) {
      return;
    }

    setState(() {
      _places.add(newItem);
    });
  }
  /* List<Place> _addItem(List<Place> places, String name) {
    places.add(Place(name: name));
    return places;
  }

  List<Place> _removeItem(List<Place> places) {
    places.removeLast();
    return places;
  } */

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text(
        'No places added yet',
        style: TextStyle(color: Colors.white),
      ),
    );

    //final places = ref.watch(pleasesProvider);
    //_places.add(const Place(name: "Muayad"));
    //_places.add(const Place(name: "Yaseen"));
    if (_places.isNotEmpty) {
      content = ListView.builder(
        itemCount: _places.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(_places[index].name),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: content,
    );
  }
}
