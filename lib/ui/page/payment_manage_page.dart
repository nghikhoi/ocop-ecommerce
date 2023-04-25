import 'package:flutter/widgets.dart';
import 'package:se121_ecommerce/ui/component/payment_preview_card.dart';

import '../base/back_navigate_page.dart';

class PaymentManagePage extends StatefulWidget {
  const PaymentManagePage({Key? key}) : super(key: key);

  @override
  State<PaymentManagePage> createState() => _PaymentManagePageState();
}

class _PaymentManagePageState extends State<PaymentManagePage> {
  @override
  Widget build(BuildContext context) {
    return BackNavigatePage(
      title: const Text('Payment'),
      scrollable: true,
      children: [
        const Text('Payment method'),
        ...List.generate(15, (index) => const PaymentPreviewCard())
      ],
    );
  }
}
