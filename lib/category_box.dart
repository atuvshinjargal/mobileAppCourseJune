import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String text;
  final Color color;
  const CategoryBox({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
