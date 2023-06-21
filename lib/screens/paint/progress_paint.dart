import 'dart:math';

import 'package:flutter/material.dart';

class ProgressPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // final rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    // final fullCircle = Paint()
    //   ..strokeCap = StrokeCap.round
    //   ..style = PaintingStyle.stroke
    //   ..color = Colors.green
    //   ..strokeWidth = 50;

    // final main = Paint()
    //   ..strokeCap = StrokeCap.round
    //   ..style = PaintingStyle.stroke
    //   ..color = Colors.pink
    //   ..strokeWidth = 30;
    //
    // final whiteIndicator = Paint()
    //   ..strokeCap = StrokeCap.round
    //   ..style = PaintingStyle.stroke
    //   ..color = Colors.white
    //   ..strokeWidth = 30-10;
    //
    // final paint = Paint()
    //   ..strokeCap = StrokeCap.round
    //   ..style = PaintingStyle.stroke
    //   ..color = const Color(0xFFF2F2F2)
    //   ..strokeWidth = 30;
    //

    // final paint2 = Paint()
    //   ..strokeCap = StrokeCap.round
    //   ..style = PaintingStyle.stroke
    //   ..color = Colors.red
    //   ..strokeWidth = 30;

    // final center = Offset(size.width/2, size.height/2);
    // final radius = min(size.width/2, size.height/2) - (100/2);
    // final startAngle = -pi/2;
    // final sweepAngle = pi*50;
    //
    // canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle+1.9, sweepAngle+4.3, false, paint);
    // canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle+0.4, sweepAngle+1, false, main);
    // canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle+0.4, 0.01, false, whiteIndicator);

    // final linePaint=Paint()..color=Colors.yellow..strokeWidth=10..strokeCap=StrokeCap.round;
    //
    // final rectanglePaint=Paint()..strokeCap=StrokeCap.round..strokeWidth=10..color=Colors.red..style=PaintingStyle.stroke;
    //
    // //canvas.drawLine(Offset(size.width*0.1, size.height*0.2), Offset(size.width*0.9, size.height*0.2), linePaint);
    //
    // final rect=Rect.fromPoints(Offset(size.width*0.3, size.height*0.3), Offset(size.width*0.7, size.height*0.5));
    // //canvas.drawRect(rect, rectanglePaint);

    final circlePain=Paint()..color=Colors.green..strokeCap=StrokeCap.round..strokeWidth=20..style=PaintingStyle.stroke;
    final pinkPaint=Paint()..color=Colors.red..strokeCap=StrokeCap.round..strokeWidth=20..style=PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width/2, size.height/2), 100, circlePain);
    canvas.drawCircle(Offset(size.width/2, size.height/2), 100, pinkPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
