import 'package:flutter/material.dart';
import 'package:se121_ecommerce/ui/base/back_navigate_page.dart';
import 'package:se121_ecommerce/ui/component/notification_card.dart';
import 'package:se121_ecommerce/ui/component/notification_section.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return BackNavigatePage(
        title: const Text('Notification'),
        scrollable: true,
        children: [
          ...List.generate(
              3,
              (index) => NotificationSection(
                    title: 'Title $index',
                    children: List.generate(5, (index) => NotificationCard()),
                  ))
        ]);
  }
}
