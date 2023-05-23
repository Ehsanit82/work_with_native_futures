import 'dart:io';

import 'package:flutter/foundation.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String title, File imagePicked) {
    _items.add(
      Place(
        id: DateTime.now().toString(),
        title: title,
        image: imagePicked,
        location: null,
      ),
    );
  }
}
