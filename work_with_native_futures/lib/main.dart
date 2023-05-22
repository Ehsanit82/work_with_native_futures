import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_with_native_futures/screens/add_place_screen.dart';
import './providers/great_places.dart';
import './screens/places_list_screen.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primaryColor: const Color(0xff1d3557),
            cardColor: const Color(0xff4a5d78),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'IranSans'
            ),
              titleMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'IranSans'
              )
          )
        ),
        home:  const PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName:(ctx)=> AddPlaceScreen(),
        },
      ),
    );
  }
}
