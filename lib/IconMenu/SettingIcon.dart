import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/presentation/DrawerMenu.dart';

class SettingIcon extends StatefulWidget {
  SettingIcon({Key? key}) : super(key: key);

  @override
  State<SettingIcon> createState() => _SettingIconState();
}

class _SettingIconState extends State<SettingIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Text(
          'Setting Papge',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
