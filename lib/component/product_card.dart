import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224,
      width: 156,
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 8, right: 8),
            child: SizedBox(
              height: 24,
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
                    ),
                    child: const Center(child: Text('20%', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                  ),
                  const Spacer(),
                  const Icon(Icons.shopping_cart_outlined),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 8, bottom: 12),
            child: Center(child: Image(image: AssetImage('assets/images/1x1/1.jpg'))),
          ),
          const Text('Product Name', style: TextStyle(color: Colors.orange, fontSize: 12, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
