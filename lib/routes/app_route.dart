import 'package:flutter_application_1/IconMenu/HomeIcon.dart';
import 'package:flutter_application_1/IconMenu/SettingIcon.dart';
import 'package:flutter_application_1/home_page/presentation/DrawerMenu.dart';
import 'package:flutter_application_1/home_page/presentation/StackWidget.dart';
import 'package:flutter_application_1/home_page/presentation/home.dart';
import 'package:flutter_application_1/routes/app_pages.dart';
import 'package:flutter_application_1/splashScreen/presentation/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = RoutePath.defaultRoute;
  static final route = [
    GetPage(name: RoutePath.defaultRoute, page: () => const SplashScreen()),
    GetPage(name: RoutePath.HomePage, page: () => const HomePage()),
    GetPage(name: RoutePath.StackWidget, page: () => const StackWidget()),
    GetPage(name: RoutePath.DrawerMenu, page: () => const DrawerMenu()),
    GetPage(name: RoutePath.HomeIcon, page: () => const HomeIcon()),
    GetPage(name: RoutePath.SettingIcon, page: () => SettingIcon()),
  ];
}
