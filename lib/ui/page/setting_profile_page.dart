import 'package:flutter/material.dart';

class SettingProfilePage extends StatefulWidget {
  const SettingProfilePage({Key? key}) : super(key: key);

  @override
  State<SettingProfilePage> createState() => _SettingProfilePageState();
}

class _SettingProfilePageState extends State<SettingProfilePage> {
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
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back))),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Profile'
              ),
            ),
          ],
        ),
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
        Text('First name'),
        TextField(),
        Text('Last name'),
        TextField(),
        Text('Email'),
        TextField(),
        Text('Phone number'),
        TextField(),
        Text('Password'),
        TextField(),
        Center(child: TextButton(onPressed: () {}, child: const Text('Save'))),
      ],
    );
  }
}
