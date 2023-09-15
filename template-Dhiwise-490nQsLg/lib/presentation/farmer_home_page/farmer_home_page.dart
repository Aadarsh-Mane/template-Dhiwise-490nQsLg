import 'package:addy01_/core/app_export.dart';
import 'package:addy01_/presentation/farmer_home_tab_container_page/farmer_card.dart';
import 'package:flutter/material.dart';

class FarmerHomePage extends StatefulWidget {
  const FarmerHomePage({Key? key}) : super(key: key);

  @override
  FarmerHomePageState createState() => FarmerHomePageState();
}

class FarmerHomePageState extends State<FarmerHomePage>
    with AutomaticKeepAliveClientMixin<FarmerHomePage> {
  @override
  bool get wantKeepAlive => true;

  List<String> dataList = [
    "wool1",
    "wool2",
    "wool3",
    "wool4"
  ]; // Example data list

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 31.v,
                    right: 12.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45.v,
                        width: 333.h,
                        child: SingleChildScrollView(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Highest value",
                                      style:
                                          theme.textTheme.titleMedium!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 13, 235, 20),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 45.adaptSize,
                                      width: 45.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 13.h,
                                        top: 3.v,
                                        bottom: 21.v,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 29.h,
                                        top: 6.v,
                                        bottom: 6.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "36,590.00",
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 1.v),
                                          Text(
                                            "+6.21%",
                                            style: CustomTextStyles
                                                .labelLargeGreenA400,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 26.v),
                      SizedBox(
                        height: 202.v,
                        width: 335.h,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: ListView.builder(
                            itemCount: dataList.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              final item = dataList[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgReply,
                                      height: 10.v,
                                      width: 9.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 7.v,
                                        right: 72.h,
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.8,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 32.v),
                                          child: SizedBox(
                                            width: 334.h,
                                            // child: Divider(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 43.v,
                                            width: 45.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.tealA400,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                21.h,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 13.h,
                                              top: 2.v,
                                              bottom: 20.v,
                                            ),
                                            child: Text(
                                              item,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup5RedA400,
                                            height: 31.v,
                                            width: 109.h,
                                            margin: EdgeInsets.only(
                                              left: 28.h,
                                              top: 3.v,
                                              bottom: 8.v,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 36.h,
                                              top: 5.v,
                                              bottom: 4.v,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "2,590.00",
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                                SizedBox(height: 1.v),
                                                Text(
                                                  "+5.21%",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 2, // Spread radius of the shadow
                              blurRadius: 5, // Blur radius of the shadow
                              offset:
                                  Offset(0, 2), // Offset of the shadow (x, y)
                            ),
                          ],
                        ),
                        child: Divider(
                          color: Colors.grey, // Line color
                          thickness: 3.0, // Line thickness
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Card 1
                      FarmerCard(),
                      // Card 2
                      FarmerCard(),
                      // Card 3
                      FarmerCard(),
                      // Card 4
                      FarmerCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
