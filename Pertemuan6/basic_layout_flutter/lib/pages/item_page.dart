import 'package:flutter/material.dart';
import 'package:basic_layout_flutter/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(item.name), backgroundColor: Colors.deepPurple, foregroundColor: Colors.white),
      body: Column(
        children: [
          Hero(
            tag: 'hero_${item.name}',
            child: Image.asset(item.foto, width: double.infinity, height: 300, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                Text('Rp ${item.price}', style: const TextStyle(fontSize: 22, color: Colors.deepPurple, fontWeight: FontWeight.bold)),
                const Divider(),
                Text('Rating: ${item.rating} | Stok: ${item.stok}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}