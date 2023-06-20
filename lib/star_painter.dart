import 'package:flutter/material.dart';

class StarPainter extends CustomPainter{
  final Color color;
  
  StarPainter(this.color);

  @override
  void paint(Canvas canvas, Size size){
    final paint = Paint()..color = color; //ungu tohiruulah

    final path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(size.width*0.618, size.height*0.382);
    path.lineTo(size.width*0.382, size.height*0.618);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}