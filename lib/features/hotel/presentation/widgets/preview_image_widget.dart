import 'package:flutter/material.dart';

class PreviewImageWidget extends StatelessWidget {
  final String url;

  const PreviewImageWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        url,
        width: 75,
        height: 60,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 75,
            height: 60,
            color: Colors.grey.shade200,
            child: const Icon(Icons.broken_image, color: Colors.grey, size: 20),
          );
        },
      ),
    );
  }
}
