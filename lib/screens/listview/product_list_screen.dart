import 'package:flutter/material.dart';
import 'package:unbaiqskillapp/screens/listview/product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'title': 'Product 1',
        'subtitle': 'Best quality',
        'price': '\$10',
        'image': 'https://via.placeholder.com/150',
      },
      {
        'title': 'Product 2',
        'subtitle': 'Top seller',
        'price': '\$20',
        'image': 'https://via.placeholder.com/150',
      },
      {
        'title': 'Product 3',
        'subtitle': 'New arrival',
        'price': '\$30',
        'image': 'https://via.placeholder.com/150',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.network(
                item['image']!,
                width: 50,
                height: 50,
                errorBuilder:
                    (context, error, stackTrace) =>
                        const Icon(Icons.image_not_supported),
              ),
              title: Text(item['title']!),
              subtitle: Text(item['subtitle']!),
              trailing: Text(item['price']!),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item['title']} tapped')),
                );
                // Navigate to detail screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ProductDetailScreen(
                          title: item['title']!,
                          subtitle: item['subtitle']!,
                          price: item['price']!,
                          imageUrl: item['image']!,
                        ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
