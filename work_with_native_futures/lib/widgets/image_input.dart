import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

enum Open {
  camera,
  gallery,
}

class ImageInput extends StatefulWidget {
  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  Future<void> _openCamera(Open c) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(
      source: c == Open.camera ? ImageSource.camera : ImageSource.gallery,
      preferredCameraDevice: CameraDevice.rear,
    );
    if (image != null) {
      setState(() {
        _storedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           TextButton.icon(
             onPressed: () => _openCamera(Open.camera),
             icon: Icon(Icons.camera_alt),
             label: Text(
               'تصویر برداری',
               style: Theme.of(context).textTheme.titleMedium,
             ),
           ),
           TextButton.icon(
             onPressed: () => _openCamera(Open.gallery),
             icon: Icon(Icons.image),
             label: Text(
               'انتخاب از گالری',
               style: Theme.of(context).textTheme.titleMedium,
             ),
           ),
         ],),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color:  Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: Theme.of(context).cardColor,
              ),
            ),
            child: _storedImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.file(
                      _storedImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  )
                : Center(
                    child: Text(
                      'هنوز عکسی گرفته نشده است',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
