import 'package:addy01_/core/app_export.dart';
import 'package:addy01_/presentation/farmer_home_page/farmer_home_page.dart';
import 'package:addy01_/presentation/farmer_home_tab_container_page/farmerHomePage.dart';
import 'package:addy01_/widgets/app_bar/appbar_image.dart';
import 'package:addy01_/widgets/app_bar/appbar_title.dart';
import 'package:addy01_/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FarmerHomeTabContainerPage extends StatefulWidget {
  const FarmerHomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  FarmerHomeTabContainerPageState createState() =>
      FarmerHomeTabContainerPageState();
}

class FarmerHomeTabContainerPageState extends State<FarmerHomeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 47.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgGroup13,
          ),
          title: AppbarTitle(
            text: "farmer@1",
            margin: EdgeInsets.only(left: 7.h),
          ),
          actions: [
            Container(
              height: 36.v,
              width: 35.h,
              margin: EdgeInsets.fromLTRB(14.h, 8.v, 14.h, 4.v),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup11,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      right: 3.h,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 14.h,
                        bottom: 15.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillRedA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Text(
                        "5",
                        style: CustomTextStyles.labelLargeWhiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Container(
                height: 47.v,
                width: 332.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray900,
                  borderRadius: BorderRadius.circular(
                    23.h,
                  ),
                ),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.gray200,
                  labelStyle: TextStyle(
                    fontSize: 14.fSize,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: appTheme.gray600,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorPadding: EdgeInsets.all(
                    4.0.h,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.blueGray800,
                    borderRadius: BorderRadius.circular(
                      19.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Prices",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Trends",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 611.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    FarmerHomePage(),
                    FarmerHomePage1(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
