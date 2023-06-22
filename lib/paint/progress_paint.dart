import 'dart:math';

import 'package:flutter/material.dart';

class ProgressPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    final greenCircle = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = Colors.green
      ..strokeWidth = 25;

    final pinkCircle = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = Colors.pink
      ..strokeWidth = 25;

    final whiteIndicator = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = Colors.white
      ..strokeWidth = 25 - 10;

    final whiteBackgroundPaint = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = const Color(0xFFF2F2F2)
      ..strokeWidth = 25;

    final blackBorder = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = Colors.grey
      ..strokeWidth = 1;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - (140 / 2);
    final radius2 = min(size.width / 2, size.height / 2) - (190 / 2);
    const startAngle = -pi / 2;
    const sweepAngle = pi * 0.05;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        startAngle + 1.9, sweepAngle + 4.3, false, whiteBackgroundPaint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        startAngle + 1.9, sweepAngle + 1.1, false, greenCircle);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        startAngle + 0.4, sweepAngle + 1, false, pinkCircle);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        startAngle + 0.4, 0.01, false, whiteIndicator);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius2), startAngle,
        8, false, blackBorder);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
