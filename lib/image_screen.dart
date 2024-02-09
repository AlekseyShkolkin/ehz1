import 'dart:io';

import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final String imagePath;

  const ImageScreen({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    File defaultimage = File('assets/defaultimage.png');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: imagePath != null
              ? Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                )
              : Text(
                  'Изображение отсутствует',
                  style: TextStyle(fontSize: 44),
                  textAlign: TextAlign.center,
                )
          // : Image.file(
          //     defaultimage,
          //     fit: BoxFit.cover,
          //     alignment: Alignment.center,
          //   ),
          ),
    );
  }
}
