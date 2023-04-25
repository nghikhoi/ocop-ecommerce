import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  final double? iconPadding;
  final Color? iconColor;
  final Color? backgroundColor;

  final double? borderWidth;
  final Color? borderColor;

  const RoundIcon(
      {Key? key,
      required this.icon,
      this.size,
      this.iconPadding,
      this.iconColor,
      this.backgroundColor,
      this.borderWidth,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 0,
          ),
        ),
        child: iconPadding == null
            ? Icon(
                icon,
                color: iconColor,
              )
            : Padding(
                padding: EdgeInsets.all(iconPadding!),
                child: FittedBox(
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                )));
  }
}
