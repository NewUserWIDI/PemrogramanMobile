import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/widget/takepicture_screen.dart';

Future<void> main() async {
  // Pastikan inisialisasi plugin dilakukan sebelum runApp
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil daftar kamera yang tersedia
  final cameras = await availableCameras();

  // Pilih kamera pertama (belakang)
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        camera: firstCamera,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}