import 'package:flutter/material.dart';

class ItemCategories extends StatelessWidget {
  final String title;
  final bool isActive;
  const ItemCategories(
      {super.key, required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.deepOrange.shade300 : Colors.grey,
          fontWeight: isActive ? FontWeight.bold : FontWeight.w300,
        ),
      ),
    );
  }
}
