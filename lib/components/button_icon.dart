import 'package:flutter/material.dart';

class ButtonIcon extends StatefulWidget {
  final Function? ontap;
  final Widget child;
  final Color? backgroundColor;
  final Color? highlightColor;
  final BorderRadius? borderRadius;
  final EdgeInsets padding;

  const ButtonIcon({
    Key? key,
    required this.ontap,
    required this.child,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(10.0),
    this.highlightColor,
    this.borderRadius,
  }) : super(key: key);

  @override
  _ButtonIconState createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.backgroundColor ?? Colors.transparent,
      borderRadius: widget.borderRadius,
      child: InkWell(
        borderRadius: widget.borderRadius,
        splashColor: Colors.transparent,
        highlightColor: widget.highlightColor ?? Colors.purple[700],
        child: Padding(
          padding: widget.padding,
          child: widget.child,
        ),
        onTap: widget.ontap != null ? () => widget.ontap!() : null,
      ),
    );
  }
}
