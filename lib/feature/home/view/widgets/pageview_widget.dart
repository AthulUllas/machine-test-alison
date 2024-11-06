import 'package:flutter/material.dart';

class PageviewWidget extends StatelessWidget {
  final String imagePath;

  const PageviewWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 385,
      width: double.infinity,
      child: Image.network(
        'https://swan.alisonsnewdemo.online/images/banner/$imagePath',
        fit: BoxFit.cover,
      ),
    );
  }
}
