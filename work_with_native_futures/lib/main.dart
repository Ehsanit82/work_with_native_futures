import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Plces',
      theme: ThemeData(
          primaryColor: const Color(0xff1d3557),
          backgroundColor: const Color(0xffa8dadc)),
    );
  }
}
