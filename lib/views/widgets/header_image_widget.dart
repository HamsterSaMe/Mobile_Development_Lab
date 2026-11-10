import 'package:flutter/material.dart';

class HeaderImageWidget extends StatelessWidget {
  const HeaderImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/rajang_river.jpg',
      width: double.infinity,
      height: 240,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => Container(
        height: 240,
        color: Colors.grey.shade300,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Image not found.\nPlease manually add your hero banner image at:\nassets/images/rajang_river.jpg',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
