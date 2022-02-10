import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Stack Page'),
        backgroundColor: Colors.green.shade500,
        actions: [
          Badge(
              position: BadgePosition.topStart(start: 8, top: 2),
              badgeContent: Text(
                '$_count',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              child: const Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.notifications,
                ),
              ),
              //padding: const EdgeInsets.all(2),
              badgeColor: Colors.blue.shade400),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text(
                'increase count',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count -= 1;
                  if (_count < 0) {
                    _count = 0;
                  }
                });
              },
              child: const Text(
                'decrease count',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
