import 'package:flutter/material.dart';

class WardrobeListPage extends StatelessWidget {
  final List<Map<String, String>> _items = [
    {'image': 'https://picsum.photos/200/300?random=1', 'caption': 'Shirt'},
    {'image': 'https://picsum.photos/200/300?random=2', 'caption': 'Pants'},
    {'image': 'https://picsum.photos/200/300?random=3', 'caption': 'Jacket'},
    {'image': 'https://picsum.photos/200/300?random=4', 'caption': 'Shoes'},
    {'image': 'https://picsum.photos/200/300?random=5', 'caption': 'Hat'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network(
            _items[index]['image']!,
            width: 100, // Increase the width of the image
            height: 100, // Increase the height of the image
            fit: BoxFit.cover, // Ensure the image covers the entire space
          ),
          title: Text(
            _items[index]['caption']!,
            style: TextStyle(
              fontSize: 20, // Increase the font size of the caption
              fontWeight: FontWeight.bold, // Make the text bold
            ),
          ),
        );
      },
    );
  }
}
