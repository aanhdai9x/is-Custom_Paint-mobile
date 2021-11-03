import 'dart:ui';

import 'package:flutter/material.dart';

class PaintScreen extends StatelessWidget {
  const PaintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyCustomPainter(),
    );
  }
}

class MyCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var myPaint = Paint()
      ..color = Colors.red
      ..strokeWidth=50
      ..strokeCap =StrokeCap.round;
    var myPath = Path();
    myPath
      ..moveTo(0, 500)      // diem bat dau
      //..lineTo(0, 500)
      ..lineTo(0, 600)
      ..lineTo(500, 800)
      ..lineTo(500, 700)
      //..quadraticBezierTo(1, 1, 500, 300)
      ..close();
    canvas.drawLine(
      Offset.zero,
      const Offset(100, 200),
      myPaint,
    );
    canvas.drawPoints(
      PointMode.points,
      [
        const Offset(50, 30),
        const Offset(10, 350),
        const Offset(300, 350),
      ],
      myPaint,
    );
    canvas.drawCircle(const Offset(100, 200), 100, myPaint);
    canvas.drawPath(myPath, myPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}