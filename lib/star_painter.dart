import 'package:flutter/material.dart';

class StarPainter extends CustomPainter{
  final Color color;
  
  StarPainter(this.color);

  @override
  void paint(Canvas canvas, Size size){
    final paint = Paint()..color = color; //ungu tohiruulah

    final path = Path();
    path.moveTo(size.width*0.5, 0);
    path.lineTo(size.width*0.618, size.height*0.382);
    path.lineTo(size.width, size.height*0.382);
    path.lineTo(size.width*0.382, size.height*0.618);
    path.lineTo(size.width, size.height*0.382);
    path.lineTo(size.width*0.691, size.height*0.618);
    path.lineTo(size.width*0.809, size.height);
    path.lineTo(size.width*0.5, size.height*0.7639);
    path.lineTo(size.width*0.191, size.height);
    path.lineTo(size.width*0.309, size.height*0.618);
    path.lineTo(0, size.height*0.382);
    path.lineTo(size.width*0.382, size.height*0.382);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}
// git add .
// git commit -m "tailbar"
// git push -u origin main