import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Plces',
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 23, 0, 80),
          canvasColor: Colors.white),
    );
  }
}
