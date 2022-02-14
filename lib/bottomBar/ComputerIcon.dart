import 'package:flutter/material.dart';

class ComputerIcon extends StatefulWidget {
  const ComputerIcon({Key? key}) : super(key: key);

  @override
  State<ComputerIcon> createState() => _ComputerIconState();
}

class _ComputerIconState extends State<ComputerIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Computer Page'),
      // ),
      body: Center(
        child: Text(
          'Computer Icon',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
