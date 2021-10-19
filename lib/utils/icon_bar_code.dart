import 'package:flutter/material.dart';

class IconBarCode extends CustomPainter {
  late Color? color;

  IconBarCode({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double heigth = size.height;
    double strokeWidth = ((width) * .8) / 9;

    var path = Path();
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    double initLine = strokeWidth * .5;

    //Colunas finas
    path.moveTo(width * .1 + initLine, heigth * .2);
    path.lineTo(width * .1 + initLine, heigth * .8);

    path.moveTo(width * .1 + strokeWidth * 5 + initLine, heigth * .2);
    path.lineTo(width * .1 + strokeWidth * 5 + initLine, heigth * .8);

    path.close();

    paint.color = this.color ?? Colors.grey;
    canvas.drawPath(path, paint);

    //Colunas grossas
    double strokeWidth1 = strokeWidth * 2;
    var path1 = Path();
    var paint1 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth1;
    path1.moveTo(width * .1 + strokeWidth * 3, heigth * .2);
    path1.lineTo(width * .1 + strokeWidth * 3, heigth * .8);

    path1.moveTo(width * .1 + strokeWidth * 8, heigth * .2);
    path1.lineTo(width * .1 + strokeWidth * 8, heigth * .8);

    paint1.color = this.color ?? Colors.grey;
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
