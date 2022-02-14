import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/presentation/DrawerMenu.dart';

class HomeIcon extends StatefulWidget {
  const HomeIcon({Key? key}) : super(key: key);

  @override
  State<HomeIcon> createState() => _HomeIconState();
}

class _HomeIconState extends State<HomeIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Text(
          'Home Icon',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
