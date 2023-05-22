import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Plces',
      theme: ThemeData(
          primaryColor: const Color(0xff04075f), backgroundColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Great Plces',
            style: TextStyle(color: Theme.of(context).backgroundColor),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Text(
          'hello',style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
