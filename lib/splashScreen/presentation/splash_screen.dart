import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String name = 'click me';

  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Get.toNamed(RoutePath.LoginPage, arguments: 'Hello');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Splash Screen'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is Home Page',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    color: Colors.white,
                  )
                  // TextStyle(
                  //fontWeight: FontWeight.bold,
                  //color: Colors.white,
                  //),
                  ),
              const SizedBox(
                height: 20,
                width: 10,
              ),
              Image.asset(
                'assets/github.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    name = 'welcome to project';
                  });
                },
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}

mixin Routes {}
