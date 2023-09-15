import 'package:flutter/material.dart';
import 'package:addy01_/presentation/farmer_home_container_screen/farmer_home_container_screen.dart';
import 'package:addy01_/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String farmerHomePage = '/farmer_home_page';

  static const String farmerHomeTabContainerPage =
      '/farmer_home_tab_container_page';

  static const String farmerHomeContainerScreen =
      '/farmer_home_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    farmerHomeContainerScreen: (context) => FarmerHomeContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
