import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentPreviewCard extends StatelessWidget {
  const PaymentPreviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.credit_card),
              Spacer(),
              Text('**** **** **** 1234'),
            ],
          ),
          const Text('Card name'),
          const Text('Date'),
        ],
      ),
    );
  }
}
