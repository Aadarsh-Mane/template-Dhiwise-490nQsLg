import 'package:addy01_/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: 375.h,
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v),
                                child: Text("App Navigation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: 20.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                    "Check your app's UI from the below demo screens of your app.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.blueGray400,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 5.v),
                        Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.black900)
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillWhiteA,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapFarmerhomeContainer(context);
                                  },
                                  child: Container(
                                      decoration: AppDecoration.fillWhiteA,
                                      child: Column(children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20.h,
                                                    vertical: 10.v),
                                                child: Text(
                                                    "farmer home - Container",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            appTheme.black900,
                                                        fontSize: 20.fSize,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400)))),
                                        SizedBox(height: 5.v),
                                        Divider(
                                            height: 1.v,
                                            thickness: 1.v,
                                            color: appTheme.blueGray400)
                                      ]))))))
                ]))));
  }

  /// Navigates to the farmerHomeContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the farmerHomeContainerScreen.
  onTapFarmerhomeContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.farmerHomeContainerScreen);
  }
}
