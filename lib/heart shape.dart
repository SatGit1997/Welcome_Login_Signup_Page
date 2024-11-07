import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Heart Shape')),
        body: Center(
          child: CustomPaint(
            size: Size(200, 200),
            painter: HeartPainter(),
          ),
        ),
      ),
    );
  }
}

class HeartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width / 2, size.height / 3);
    path.cubicTo(size.width * 0.2, size.height * 0.1, 0, size.height * 0.4, size.width / 2, size.height);
    path.cubicTo(size.width, size.height * 0.4, size.width * 0.8, size.height * 0.1, size.width / 2, size.height / 3);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
