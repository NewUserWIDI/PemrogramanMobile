import 'package:flutter/material.dart';
import 'package:basic_layout_flutter/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Es Kopi Kenangan Mantan', 
      price: 19000,
      foto: 'images/kopi_kenangan.jpg', 
      stok: 45,
      rating: 4.9
    ),
    Item(
      name: 'Kenangan Matcha Indah', 
      price: 24000,
      foto: 'images/kenangan_matcha.jpeg',
      stok: 20,
      rating: 4.8
    ),
    Item(
      name: 'Dubai Pistachio Latte', 
      price: 20000,
      foto: 'images/dubai_pistachio_latte.jpeg',
      stok: 15,
      rating: 4.7
    ),
    Item(
      name: 'Avocado Coffee', 
      price: 28000,
      foto: 'images/avocado_latte.jpeg',
      stok: 8,
      rating: 4.6
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widi Widayanti - 244107060029'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () => Navigator.pushNamed(context, '/item', arguments: item),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Hero(
                      tag: 'hero_${item.name}',
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.asset(
                          item.foto,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => 
                            Container(color: Colors.grey[200], child: const Icon(Icons.coffee)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold), maxLines: 1),
                        Text('Rp ${item.price}', style: const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [const Icon(Icons.star, color: Colors.orange, size: 14), Text(' ${item.rating}', style: const TextStyle(fontSize: 12))]),
                            Text('Stok: ${item.stok}', style: const TextStyle(fontSize: 10, color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}