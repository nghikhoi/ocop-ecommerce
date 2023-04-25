import 'package:flutter/material.dart';
import 'package:se121_ecommerce/ui/base/back_navigate_page.dart';

class AccountSettingMenuPage extends StatefulWidget {
  const AccountSettingMenuPage({Key? key}) : super(key: key);

  @override
  State<AccountSettingMenuPage> createState() => _AccountSettingMenuPageState();
}

class _AccountSettingMenuPageState extends State<AccountSettingMenuPage> {
  @override
  Widget build(BuildContext context) {
    return BackNavigatePage(
        title: Text('My Account'),
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Name')),
                  TextButton(onPressed: () {}, child: const Text('Some action')),
                ],
              ),
            ],
          ),
          MaterialButton(onPressed: () {}, child: Row(
            children: [
              const Icon(Icons.person),
              const Text('Profile'),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
          MaterialButton(onPressed: () {}, child: Row(
            children: [
              const Icon(Icons.person),
              const Text('Profile'),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
          MaterialButton(onPressed: () {}, child: Row(
            children: [
              const Icon(Icons.person),
              const Text('Profile'),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
          MaterialButton(onPressed: () {}, child: Row(
            children: [
              const Icon(Icons.person),
              const Text('Profile'),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
          MaterialButton(onPressed: () {}, child: Row(
            children: [
              const Icon(Icons.person),
              const Text('Profile'),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
          MaterialButton(onPressed: () {}, child: Row(
            children: [
              const Icon(Icons.person),
              const Text('Profile'),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
        ]
    );
  }
}
