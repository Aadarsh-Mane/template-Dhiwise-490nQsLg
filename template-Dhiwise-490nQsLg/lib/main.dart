import 'package:addy01_/presentation/farmer_home_tab_container_page/farmer_home_tab_container_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:addy01_/theme/theme_helper.dart';
import 'package:addy01_/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'addy01_',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.farmerHomeContainerScreen,
      routes: AppRoutes.routes,
    );
  }
}
