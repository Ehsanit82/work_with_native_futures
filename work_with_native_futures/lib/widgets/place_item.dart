import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/place.dart';

import '../providers/great_places.dart';

class PlaceItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final place = Provider.of<Place>(context);
    return Card(
      margin: EdgeInsets.all(8),
      color: Theme.of(context).cardColor,
      child: ListTile(
          style: ListTileStyle.list,
          leading: CircleAvatar(radius: 25,
            backgroundImage: FileImage(place.image),
          ),
          title: Text(place.title),
        ),
    );
  }
}
