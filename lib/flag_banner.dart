import 'package:flutter/material.dart';

class FlagBanner extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    // 100 / 4 = 25
    final verticalFrames = size.height / 4;

    final path = Path()
      ..moveTo(0, verticalFrames)
      ..cubicTo(
        size.width, // x1
        verticalFrames, // y1,
        size.width, // x2,
        size.height, // y2,
        size.width, // x3,
        size.height, // y3,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
