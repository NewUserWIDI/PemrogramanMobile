import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Judul Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    // Tombol Section
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Teks Section
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Banyak di Batu, Malang, menawarkan pemandangan luar biasa. '
        'Sangat populer untuk olahraga paralayang dan menikmati lampu kota. '
        '\n\nNama: Widi Widayanti \nNIM: 244107060029',
        softWrap: true,
      ),
    );

    // Rekomendasi Section (Gambar Tambahan)
    Widget recommendationSection = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          _buildImageItem('images/bromo.jpeg'),
          const SizedBox(width: 8),
          _buildImageItem('images/lincing.jpeg'),
          const SizedBox(width: 8),
          _buildImageItem('images/semeru.jpeg'),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        // Menggunakan ListView agar bisa scroll
        body: ListView(
          children: [
            // Gambar Utama dengan BoxFit.cover
            Image.asset(
              'images/batu.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Rekomendasi Gunung Lain', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            recommendationSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label, style: TextStyle(fontSize: 12, color: color)),
        ),
      ],
    );
  }

  Widget _buildImageItem(String path) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(path, height: 100, fit: BoxFit.cover),
      ),
    );
  }
}