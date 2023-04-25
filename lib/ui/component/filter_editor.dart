import 'package:flutter/material.dart';

class FilterEditor extends StatefulWidget {
  const FilterEditor({Key? key}) : super(key: key);

  @override
  State<FilterEditor> createState() => _FilterEditorState();
}

class _FilterEditorState extends State<FilterEditor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        Row(
          children: const [
            Text('Filter'),
            Spacer(),
            Text('Clear'),
          ],
        ),
        const Text('Category'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  10, (index) => Chip(label: Text('Category $index')))),
        ),
        const Text('Branch'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  10, (index) => Chip(label: Text('Branch $index')))),
        ),
        const Text('Price'),
        Slider(
          value: 50,
          min: 0,
          max: 100,
          onChanged: (value) {},
        ),
        Row(
          children: [
            Expanded(child: Container(
              color: Colors.red,
              child: const Center(child: Text('0')),
            )),
            Expanded(child: Container(
              color: Colors.blue,
              child: const Center(child: Text('100')),
            )),
          ],
        ),
        TextButton(onPressed: () {}, child: const Text('Apply'))
      ]),
    );
  }
}
