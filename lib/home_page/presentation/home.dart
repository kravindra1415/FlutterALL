// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_application_1/IconMenu/HomeIcon.dart';
import 'package:flutter_application_1/IconMenu/InfoIcon.dart';
import 'package:flutter_application_1/IconMenu/SettingIcon.dart';
import 'package:flutter_application_1/bottomBar/TabIcons.dart';
import 'package:flutter_application_1/home_page/presentation/DrawerMenu.dart';
import 'package:flutter_application_1/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottomBar/ComputerIcon.dart';
import '../../bottomBar/LaptopIcon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  var data = Get.arguments;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Get.toNamed('ComputerIcon');
        break;

      case 1:
        Get.toNamed('LaptopIcon');
        break;

      case 2:
        Get.toNamed('TabIcons');
        break;
    }
  }

  static List<Widget> _pages = <Widget>[
    const ComputerIcon(),
    const LaptopIcon(),
    const TabIcons()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF6200EE),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Computer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop),
            label: 'Laptop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab_outlined),
            label: 'Tab',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

TabIcon() {}
