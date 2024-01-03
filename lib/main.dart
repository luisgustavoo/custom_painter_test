import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                painter: Square(),
                child: const SizedBox(
                  height: 200,
                  width: 300,
                ),
              ),
              CustomPaint(
                painter: Rhombus(),
                child: const SizedBox(
                  height: 150,
                  width: 250,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      painter: FlagBanner(),
                      child: const SizedBox(
                        height: 100,
                        width: 100,
                      ),
                    ),
                    ...List.generate(
                      26,
                      (index) {
                        final starSize = double.parse(
                          Random.secure().nextInt(10).toString(),
                        );
                        return Positioned(
                          bottom: double.parse(
                            Random.secure().nextInt(90).toString(),
                          ),
                          left: double.parse(
                            Random.secure().nextInt(90).toString(),
                          ),
                          child: CustomPaint(
                            painter: Star(),
                            child: SizedBox(
                              height: starSize,
                              width: starSize,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Square extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.green
        // ..strokeWidth = 2
        // ..style = PaintingStyle.stroke
        ;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class Rhombus extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.yellow
        // ..strokeWidth = 2
        // ..style = PaintingStyle.stroke
        ;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class Circle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.blue
        // ..strokeWidth = 2
        // ..style = PaintingStyle.stroke
        ;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class FlagBanner extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    final path = Path()
      ..moveTo(0, size.height / 4)
      ..cubicTo(
        size.width,
        size.height / 4,
        size.width,
        size.height,
        size.width,
        size.height,
      );

    // final path = Path()
    //   ..moveTo(0, 0)
    //   ..quadraticBezierTo(
    //     size.width * 0.75,
    //     0,
    //     size.width,
    //     size.height / 2,
    //   )
    //   ..moveTo(0, size.height / 2)
    //   ..quadraticBezierTo(
    //     size.width * 0.75,
    //     size.width * 0.25,
    //     size.width,
    //     size.height,
    //   );

    // final path = Path()
    //   ..moveTo(0, size.height / 4)
    //   ..cubicTo(
    //     size.width / 2,
    //     size.height / 4,
    //     size.width,
    //     size.height / 2,
    //     size.width,
    //     size.height / 2,
    //   )
    //   ..moveTo(0, size.height / 2)
    //   ..cubicTo(
    //     size.width / 2,
    //     size.height / 2,
    //     size.width,
    //     (size.height / 4) * 3,
    //     size.width,
    //     (size.height / 4) * 3,
    //   )
    //   // ..moveTo(0, size.height / 2)
    //   ..lineTo(0, size.height / 2)
    //   // ..moveTo(size.width, size.height / 2)
    //   ..lineTo(
    //     size.width,
    //     (size.height / 4) * 3,
    //   );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class Star extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;

    // Divide o quadro em 8 partes iguais
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
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
