import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<Map<String, String>> _items = [
    {'image': 'https://via.placeholder.com/150', 'caption': 'Item 1'},
    {'image': 'https://via.placeholder.com/150', 'caption': 'Item 2'},
    {'image': 'https://via.placeholder.com/150', 'caption': 'Item 3'},
    {'image': 'https://via.placeholder.com/150', 'caption': 'Item 4'},
    {'image': 'https://via.placeholder.com/150', 'caption': 'Item 5'},
  ];

  @override
  Widget build(BuildContext context) {
    final bool isWideScreen = MediaQuery.of(context).size.width > 600;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isWideScreen ? 4 : 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return GridTile(
          child: Image.network(_items[index]['image']!),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text(_items[index]['caption']!),
          ),
        );
      },
    );
  }
}
