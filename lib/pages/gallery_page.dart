// lib/pages/gallery_page.dart

import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final images = List.generate(
      10,
      (index) => "https://picsum.photos/500/500?random=$index",
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Galeria")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
        ),
        itemBuilder: (_, index) {
          return Hero(
            tag: images[index],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(images[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
