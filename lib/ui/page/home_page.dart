import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:se121_ecommerce/ui/base/named_section.dart';
import 'package:se121_ecommerce/ui/component/product_card.dart';
import 'package:se121_ecommerce/ui/component/product_section.dart';
import 'package:se121_ecommerce/ui/component/round_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
        NamedSection(
            title: Text('Category'),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    20,
                    (index) => const RoundIcon(
                          icon: Icons.ac_unit,
                          borderColor: Colors.orange,
                          borderWidth: 1,
                        )),
              ),
            )),
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  3,
                  (index) => ProductSection(
                        title: 'Title $index',
                        children:
                            List.generate(4, (index) => const ProductCard()),
                      )),
            ),
          ),
        )
      ]),
    );
  }
}
