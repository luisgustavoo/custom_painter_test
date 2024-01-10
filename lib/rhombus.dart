import 'package:flutter/material.dart';

class Rhombus extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.yellow;

    final middleHorizontalFrame = size.width / 2;
    final middleVerticalFrame = size.height / 2;

    final path = Path()
      ..moveTo(middleHorizontalFrame, 0)
      ..lineTo(0, middleVerticalFrame)
      ..lineTo(middleHorizontalFrame, size.height)
      ..lineTo(size.width, middleVerticalFrame)
      ..lineTo(middleHorizontalFrame, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


// class Rhombus extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = Colors.yellow;

//     final path = Path()
//       ..moveTo(size.width / 2, 0)
//       ..lineTo(0, size.height / 2)
//       ..lineTo(size.width / 2, size.height)
//       ..lineTo(size.width, size.height / 2)
//       ..lineTo(size.width / 2, 0);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }