import 'package:flutter/material.dart';

class HomeIcon extends StatefulWidget {
  const HomeIcon({Key? key}) : super(key: key);

  @override
  State<HomeIcon> createState() => _HomeIconState();
}

class _HomeIconState extends State<HomeIcon> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home Papge',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
