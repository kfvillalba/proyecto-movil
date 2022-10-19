import 'package:flutter/material.dart';

class loginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.2, size.height * 0.20);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.3);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(loginPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(loginPainter oldDelegate) => false;
}
