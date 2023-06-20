import 'package:flutter/material.dart';
import 'star_painter.dart';
class Star extends StatelessWidget {
  final double size; //double gedeg n butarthai too 37.5 geh met
  final Color color; //Ungu jisheen RGB(255,124,65)
  const Star({
    super.key,
    required this.color, //reqiured zaaval baih shaardlagatai
    required this.size, //reqiured zaaval baih shaardlagatai
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: StarPainter(color),
      ),
    );
  }
}
