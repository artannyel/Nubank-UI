import 'package:flutter/material.dart';

class IconPhone extends CustomPainter {
  late Color? color;

  IconPhone({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double heigth = size.height;
    double strokeWidth = ((width + heigth) / 2) * .075;
    var path = Path();
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    //Quadrado
    path.moveTo((width * .25), heigth * .25);
    path.quadraticBezierTo(
      width * .25,
      heigth * .1,
      (width * .4),
      heigth * .1,
    );
    path.lineTo((width * .60), (heigth * .1));
    path.quadraticBezierTo(
      (width * .75),
      heigth * .1,
      (width * .75),
      heigth * .25,
    );
    path.lineTo((width * .75), (heigth * .75));
    path.quadraticBezierTo(
      (width * .75),
      heigth * .9,
      (width * .60),
      heigth * .9,
    );
    path.lineTo((width * .4), (heigth * .9));
    path.quadraticBezierTo(
      (width * .25),
      heigth * .9,
      (width * .25),
      heigth * .75,
    );
    path.lineTo((width * .25), heigth * .25);

    path.moveTo(width * .41, heigth * .75);
    path.lineTo(width * .59, heigth * .75);

    path.close();

    paint.color = this.color ?? Colors.grey;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
