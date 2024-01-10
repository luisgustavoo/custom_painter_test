import 'dart:math';

import 'package:custom_painter_test/flag_banner.dart';
import 'package:custom_painter_test/rhombus.dart';
import 'package:custom_painter_test/square.dart';
import 'package:custom_painter_test/star.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ..._generateStars().map(
                    (star) {
                      return Positioned(
                        bottom: star.bottomPositionStar,
                        left: star.leftPositionStar,
                        child: CustomPaint(
                          painter: Star(),
                          child: SizedBox(
                            height: star.starSize,
                            width: star.starSize,
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
    );
  }

  List<({double leftPositionStar, double bottomPositionStar, double starSize})>
      _generateStars() {
    final list = <({
      double leftPositionStar,
      double bottomPositionStar,
      double starSize
    })>[];
    var bottomPositionStar = 0.0;
    var leftPositionStar = 0.0;
    var starSize = 2.0;

    const spacingBetweenStars = 10;

    while (list.length != 26) {
      if (list.isEmpty) {
        bottomPositionStar = 70;
        leftPositionStar = 70;
        starSize = 8;
        final itemList = (
          leftPositionStar: leftPositionStar,
          bottomPositionStar: bottomPositionStar,
          starSize: starSize
        );
        list.add(itemList);
      } else {
        bottomPositionStar = double.parse(
          (Random.secure().nextInt(55) + 10).toString(),
        );
        leftPositionStar = double.parse(
          (Random.secure().nextInt(55) + 10).toString(),
        );
        starSize = double.parse(
          (Random.secure().nextInt(8) + 2).toString(),
        );

        final generatedItem = (
          leftPositionStar: leftPositionStar,
          bottomPositionStar: bottomPositionStar,
          starSize: starSize
        );

        for (final item in list) {
          if ((item.leftPositionStar - generatedItem.leftPositionStar).abs() <
                  spacingBetweenStars &&
              (item.bottomPositionStar - generatedItem.bottomPositionStar)
                      .abs() <
                  spacingBetweenStars) {
            continue;
          }
        }

        list.add(generatedItem);
      }
    }

    return list;
  }
}
