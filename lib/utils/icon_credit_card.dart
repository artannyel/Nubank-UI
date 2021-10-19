import 'package:flutter/material.dart';

class IconCreditCard extends CustomPainter {
  late Color? color;

  IconCreditCard({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double heigth = size.height;
    double strokeWidth = ((width + heigth) / 2) * .08;
    var path = Path();
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    //Quadrado
    path.moveTo((width * .2), heigth * .25);
    path.quadraticBezierTo(
      width * .2,
      heigth * .1,
      (width * .35),
      heigth * .1,
    );
    path.lineTo((width * .65), (heigth * .1));
    path.quadraticBezierTo(
      (width * .8),
      heigth * .1,
      (width * .8),
      heigth * .25,
    );
    path.lineTo((width * .8), (heigth * .75));
    path.quadraticBezierTo(
      (width * .8),
      heigth * .9,
      (width * .65),
      heigth * .9,
    );
    path.lineTo((width * .35), (heigth * .9));
    path.quadraticBezierTo(
      (width * .2),
      heigth * .9,
      (width * .2),
      heigth * .75,
    );
    path.lineTo((width * .2), heigth * .25);

    path.moveTo(width * .5 + strokeWidth * .5, heigth * .27);
    path.lineTo(width * .5 + strokeWidth * .5, heigth * .4);

    path.close();

    paint.color = this.color ?? Colors.grey;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
