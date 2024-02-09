import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPageUkz extends StatefulWidget {
  CameraPageUkz({Key key}) : super(key: key);

  @override
  State<CameraPageUkz> createState() => _CameraPageUkzState();
}

class _CameraPageUkzState extends State<CameraPageUkz> {
  List<CameraDescription> cameras;
  CameraController controller;
  Future<void> _initializeControllerFuture;
  bool _isReady = false;

  @override
  void initState() {
    super.initState();
    getCameras().then((_) {
      initializeCamera();
    });
  }

  Future<void> getCameras() async {
    cameras = await availableCameras();
  }

  Future<void> initializeCamera() async {
    controller = CameraController(cameras[0], ResolutionPreset.high);
    _initializeControllerFuture = controller.initialize();
    await _initializeControllerFuture;
    setState(() {
      _isReady = true;
    });
  }

  void _takePicture() async {
    if (!_isReady) {
      return;
    }
    try {
      final image = await controller.takePicture();
      setState(() {
        _storedImage = File(image.path);
      });
      Navigator.pop(context, _storedImage);
    } catch (e) {
      print(e);
    }
  }

  File _storedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добавить фото'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: _isReady
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: CameraPreview(controller),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: FloatingActionButton(
              onPressed: _takePicture,
              child: Icon(Icons.camera_alt),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
