import 'package:flutter/material.dart';

class SettingIcon extends StatefulWidget {
  SettingIcon({Key? key}) : super(key: key);

  @override
  State<SettingIcon> createState() => _SettingIconState();
}

class _SettingIconState extends State<SettingIcon> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Setting Papge',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
