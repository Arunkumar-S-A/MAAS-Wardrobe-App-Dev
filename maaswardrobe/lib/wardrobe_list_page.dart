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
    final bool isWideScreen = MediaQuery.of(context).size.width > 600;
    final int crossAxisCount = isWideScreen
        ? 3
        : 2; // Adjust number of items per row based on screen width

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 8.0, // Spacing between items horizontally
        mainAxisSpacing: 8.0, // Spacing between items vertically
        childAspectRatio: 2.5, // Aspect ratio for the items (width/height)
      ),
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return GridTile(
          child: Row(
            children: [
              Image.network(
                _items[index]['image']!,
                width: 100, // Fixed width for images
                height: 100, // Fixed height for images
                fit: BoxFit.cover, // Ensure the image covers the entire space
              ),
              SizedBox(width: 10), // Add spacing between image and text
              Expanded(
                // Ensure text takes up remaining space
                child: Text(
                  _items[index]['caption']!,
                  style: TextStyle(
                    fontSize: 20, // Increase the font size of the caption
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
