import 'package:flutter/material.dart';

class InfoIcon extends StatefulWidget {
  const InfoIcon({Key? key}) : super(key: key);

  @override
  State<InfoIcon> createState() => _InfoIconState();
}

class _InfoIconState extends State<InfoIcon> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Info Papge',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
