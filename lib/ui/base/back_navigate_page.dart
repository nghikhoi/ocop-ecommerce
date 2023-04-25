import 'package:flutter/material.dart';

class BackNavigatePage extends StatelessWidget {
  Widget title;
  List<Widget> children;
  bool scrollable;

  BackNavigatePage(
      {Key? key,
      required this.title,
      required this.children,
      this.scrollable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Align(
                alignment: AlignmentDirectional.centerStart,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back))),
            Align(alignment: AlignmentDirectional.center, child: title),
          ],
        ),
        Expanded(
          child: scrollable
              ? SingleChildScrollView(
                  child: Column(
                    children: children,
                  ),
                )
              : Column(
                  children: children,
                ),
        )
      ],
    );
  }
}
