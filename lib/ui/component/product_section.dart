import 'package:flutter/material.dart';
import 'package:se121_ecommerce/ui/base/named_section.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const ProductSection({Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedSection(
      title: Text(title, style: const TextStyle(fontSize: 20)),
      child: Wrap(spacing: 14, runSpacing: 14, children: children),
    );
  }
}
