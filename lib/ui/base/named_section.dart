import 'package:flutter/material.dart';

class NamedSection extends StatelessWidget {

  final Widget title;
  final Widget child;
  final Widget? suffix;
  final EdgeInsetsGeometry? padding;

  const NamedSection({Key? key, required this.title, required this.child, this.suffix, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title,
              if (suffix != null) ...[const Spacer(), suffix!],
            ],
          ),
          child,
        ],
      ),
    );
  }

}
