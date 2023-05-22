import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_with_native_futures/screens/add_place_screen.dart';
import './providers/great_places.dart';
import './screens/places_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Plces',
        theme: ThemeData(
          primaryColor: const Color(0xff1d3557),
            backgroundColor: const Color(0xffa8dadc),
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName:(ctx)=>AddPlaceScreen(),
        },
      ),
    );
  }
}
