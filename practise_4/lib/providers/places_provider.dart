import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practise_4/models/place.dart';

List<Place> places = [];

final pleasesProvider = Provider((ref) {
  return places;
});
