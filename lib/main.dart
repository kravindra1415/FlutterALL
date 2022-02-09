import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app_route.dart';
import 'package:flutter_application_1/splashScreen/presentation/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
      getPages: AppPages.route, //must to add
    );
  }
}
