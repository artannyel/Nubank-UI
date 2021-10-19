import 'package:flutter/material.dart';

class IconPix extends CustomPainter {
  late Color? color;

  IconPix({
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

    //Losângulo
    path.moveTo((width * .4), heigth * .2);
    path.quadraticBezierTo(
      width * .5,
      heigth * .1,
      (width * .6),
      heigth * .2,
    );
    path.lineTo((width * .8), (heigth * .4));
    path.quadraticBezierTo(
      (width * .9),
      heigth * .5,
      (width * .8),
      heigth * .6,
    );
    path.lineTo(width * .6, heigth * .8);
    path.quadraticBezierTo(
      (width * .5),
      heigth * .9,
      (width * .4),
      heigth * .8,
    );
    path.lineTo(width * .2, heigth * .6);
    path.quadraticBezierTo(
      (width * .1),
      heigth * .5,
      (width * .2),
      heigth * .4,
    );
    path.lineTo((width * .4), heigth * .2);

    //Desenho interno superior
    path.moveTo((width * .3), heigth * .3);
    path.lineTo(width * .37, heigth * .3);
    path.quadraticBezierTo(
      (width * .41),
      heigth * .3,
      (width * .45),
      heigth * .37,
    );
    path.lineTo(width * .47, heigth * .4);
    path.quadraticBezierTo(
      (width * .5),
      heigth * .45,
      (width * .53),
      heigth * .4,
    );
    path.lineTo(width * .57, heigth * .34);
    path.quadraticBezierTo(
      (width * .6),
      heigth * .3,
      (width * .63),
      heigth * .3,
    );
    path.lineTo(width * .7, heigth * .3);

    //Desenho interno inferior
    path.moveTo((width * .3), (heigth * .7));
    path.lineTo(width * .37, heigth * .7);
    path.quadraticBezierTo(
      (width * .41),
      heigth * .7,
      (width * .45),
      heigth * .63,
    );
    path.lineTo(width * .47, heigth * .6);
    path.quadraticBezierTo(
      (width * .5),
      heigth * .55,
      (width * .53),
      heigth * .6,
    );
    path.lineTo(width * .57, heigth * .66);
    path.quadraticBezierTo(
      (width * .6),
      heigth * .7,
      (width * .63),
      heigth * .7,
    );
    path.lineTo(width * .7, heigth * .7);

    path.moveTo(0, 0);

    path.close();

    paint.color = this.color ?? Colors.grey;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
