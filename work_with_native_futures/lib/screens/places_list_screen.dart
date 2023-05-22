import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.background,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Your Places'),
      ),
    );
  }
}
