import 'package:addy01_/core/app_export.dart';
import 'package:addy01_/presentation/farmer_home_tab_container_page/farmer_home_tab_container_page.dart';
import 'package:addy01_/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FarmerHomeContainerScreen extends StatelessWidget {
  FarmerHomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.farmerHomeTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomAppBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.farmerHomeTabContainerPage;
      case BottomBarEnum.Management:
        return "/";
      case BottomBarEnum.Refresh:
        return "/";
      case BottomBarEnum.Market:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.farmerHomeTabContainerPage:
        return FarmerHomeTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
