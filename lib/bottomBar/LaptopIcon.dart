import 'package:flutter/material.dart';

class LaptopIcon extends StatefulWidget {
  const LaptopIcon({Key? key}) : super(key: key);

  @override
  State<LaptopIcon> createState() => _LaptopIconState();
}

class _LaptopIconState extends State<LaptopIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laptop Page'),
      ),
      body: Center(
        child: Text(
          'Laptop Icon',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
