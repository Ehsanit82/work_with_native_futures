import 'package:flutter/material.dart';
import 'package:work_with_native_futures/screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
              },
              icon: const Icon(Icons.add),
            ),
          ],
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          title:  Text('مکان های شما',style:  Theme.of(context).textTheme.titleLarge,),
        ),
      ),
    );
  }
}
