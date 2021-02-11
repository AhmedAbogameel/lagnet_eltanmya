import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '0',
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
        child: Image.network(
          'https://media.gettyimages.com/photos/business-people-working-in-modern-office-space-picture-id973718370?s=612x612',
        ),
      ),
    );
  }
}
