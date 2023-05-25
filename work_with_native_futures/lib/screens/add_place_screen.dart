import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/great_places.dart';
import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const String routeName = '/add_place';

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

  File _pickedImage;

  void _selectedImage(File image) {
    _pickedImage=image;
  }

  void addPlace(){
    final place = Provider.of<GreatPlaces>(context,listen: false);
    if(_titleController.text.isEmpty || _pickedImage==null){
      return;
    }
    place.addPlace(_titleController.text, _pickedImage);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'افزودن مکان جدید',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:  Theme.of(context).cardColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide:
                              BorderSide(color: Theme.of(context).cardColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                        hintText: 'موضوع',
                        hintStyle: Theme.of(context).textTheme.titleMedium,
                      ),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 7,),
                    ImageInput(_selectedImage),
                  ],
                ),
              )),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).cardColor,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              onPressed: addPlace,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'افزودن مکان ',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Icon(Icons.add),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
