import 'package:flutter/material.dart';

class TabIcons extends StatefulWidget {
  const TabIcons({Key? key}) : super(key: key);

  @override
  State<TabIcons> createState() => _TabIconsState();
}

class _TabIconsState extends State<TabIcons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Page'),
      ),
      //drawer: DrawerMenu(),
      body: Center(
        child: Text(
          'Tab Icon',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
