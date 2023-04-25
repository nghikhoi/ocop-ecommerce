import 'package:flutter/material.dart';
import 'package:se121_ecommerce/ui/base/named_section.dart';

class NotificationSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const NotificationSection(
      {Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedSection(
        title: Text(title, style: const TextStyle(fontSize: 20)),
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: children,
        ));
  }
}
