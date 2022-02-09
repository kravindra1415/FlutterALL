import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var data = Get.arguments;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text('Home Page'),
      ),
      body: SafeArea(
          child: Center(
        child: GestureDetector(
          onTap: () {
            Get.back(); //To take a back
          },
          child: Text(
            "The $data coming from splash screen",
            // style: const TextStyle(
            //   fontWeight: FontWeight.bold,
            style:
                (GoogleFonts.cabin(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ),
      )),
    );
  }
}
