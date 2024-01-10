import 'package:flutter/material.dart';

class Star extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;

    // Divide o quadro em 8 partes iguais, na vertical e horizontal
    // 20 / 8=  2,5, ou seja cada quadradinho do nosso quadro tem 2,5px
    final verticalFrames = size.height / 8;
    final horizontalFrames = size.width / 8;

    final threeVerticalFrames = verticalFrames * 3;
    final fiveVerticalFrames = verticalFrames * 5;
    final sixVerticalFrames = verticalFrames * 6;

    final oneHorizontalFrames = horizontalFrames * 1;
    final twoHorizontalFrames = horizontalFrames * 2;
    final threeHorizontalFrames = horizontalFrames * 3;
    final middleHorizontalFrame = size.width / 2;
    final fiveHorizontalFrames = horizontalFrames * 5;
    final sixHorizontalFrames = horizontalFrames * 6;
    final sevenHorizontalFrames = horizontalFrames * 7;

    final path = Path()
      ..moveTo(middleHorizontalFrame, 0)
      ..lineTo(threeHorizontalFrames, threeVerticalFrames)
      ..lineTo(0, threeVerticalFrames)
      ..lineTo(twoHorizontalFrames, fiveVerticalFrames)
      ..lineTo(oneHorizontalFrames, size.height)
      ..lineTo(middleHorizontalFrame, sixVerticalFrames)
      ..lineTo(sevenHorizontalFrames, size.height)
      ..lineTo(sixHorizontalFrames, fiveVerticalFrames)
      ..lineTo(size.width, threeVerticalFrames)
      ..lineTo(fiveHorizontalFrames, threeVerticalFrames)
      ..lineTo(middleHorizontalFrame, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


// class Star extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = Colors.white;

//     // Divide o quadro em 8 partes iguais
//     final verticalFrames = size.height / 8;
//     final horizontalFrames = size.width / 8;

//     final threeVerticalFrames = verticalFrames * 3;
//     final fiveVerticalFrames = verticalFrames * 5;
//     final sixVerticalFrames = verticalFrames * 6;

//     final oneHorizontalFrames = horizontalFrames * 1;
//     final twoHorizontalFrames = horizontalFrames * 2;
//     final threeHorizontalFrames = horizontalFrames * 3;
//     final middleHorizontalFrame = size.width / 2;
//     final fiveHorizontalFrames = horizontalFrames * 5;
//     final sixHorizontalFrames = horizontalFrames * 6;
//     final sevenHorizontalFrames = horizontalFrames * 7;

//     final path = Path()
//       ..moveTo(middleHorizontalFrame, 0)
//       ..lineTo(threeHorizontalFrames, threeVerticalFrames)
//       ..lineTo(0, threeVerticalFrames)
//       ..lineTo(twoHorizontalFrames, fiveVerticalFrames)
//       ..lineTo(oneHorizontalFrames, size.height)
//       ..lineTo(middleHorizontalFrame, sixVerticalFrames)
//       ..lineTo(sevenHorizontalFrames, size.height)
//       ..lineTo(sixHorizontalFrames, fiveVerticalFrames)
//       ..lineTo(size.width, threeVerticalFrames)
//       ..lineTo(fiveHorizontalFrames, threeVerticalFrames)
//       ..lineTo(middleHorizontalFrame, 0);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
