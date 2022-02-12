import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/presentation/DrawerMenu.dart';
import 'package:flutter_application_1/routes/app_pages.dart';
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
      drawer: const DrawerMenu(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text('Home Page'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.back(); //To take a back
                },
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    "The $data coming from splash screen",
                    // style: const TextStyle(
                    //   fontWeight: FontWeight.bold,
                    style: (GoogleFonts.cabin(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutePath.StackWidget);
              },
              child: const Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
