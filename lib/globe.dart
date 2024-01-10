import 'package:flutter/material.dart';

class Globe extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


// class Circle extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = Colors.blue;

//     canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// Vamos seguir a mesma linha do losango, primeiro vamos criar um arquivo chamado `globe.dart` e em seguida criar a classe Globe que estende CustomPainter e já colocar o retorno no método `shouldRepaint` como `false`.

// ![Globe File](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/o30k8yglphzhq71h2pqv.png)

// ```dart
// class Globe extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // TODO: implement paint
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
// ```

// Voltamos no arquivo home_page.dart vamos vamos definir a largura de 250 e altura de 150 do nosso quadro para desenhar o losango.