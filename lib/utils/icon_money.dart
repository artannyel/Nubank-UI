import 'package:flutter/material.dart';

class IconMoney extends CustomPainter {
  late Color? color;

  IconMoney({
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
    path.moveTo((width * .1), heigth * .25);
    path.quadraticBezierTo(
      width * .1,
      heigth * .1,
      (width * .25),
      heigth * .1,
    );
    path.lineTo((width * .75), (heigth * .1));
    path.quadraticBezierTo(
      (width * .9),
      heigth * .1,
      (width * .9),
      heigth * .25,
    );
    path.lineTo((width * .9), (heigth * .9));
    path.lineTo((width * .7), (heigth * .8));
    path.lineTo((width * .25), (heigth * .8));
    path.quadraticBezierTo(
      (width * .1),
      heigth * .8,
      (width * .1),
      heigth * .65,
    );
    path.lineTo((width * .1), heigth * .25);

    //Sifrão
    /* path.moveTo(width * .65, heigth * .3);
    path.lineTo(width * .5, heigth * .3);
    path.quadraticBezierTo(
      (width * .35),
      heigth * .3,
      (width * .43),
      heigth * .4,
    );
    //path.lineTo(width * .50, heigth * .45);
    path.quadraticBezierTo(
      (width * .7),
      heigth * .57,
      (width * .5),
      heigth * .6,
    );
    path.lineTo(width * .35, heigth * .6);
    path.moveTo(width * .35, heigth * .6);*/

    path.close();

    paint.color = this.color ?? Colors.grey;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
