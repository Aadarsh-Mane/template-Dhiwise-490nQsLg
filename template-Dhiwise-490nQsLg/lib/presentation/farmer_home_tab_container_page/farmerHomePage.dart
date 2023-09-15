import 'package:addy01_/core/app_export.dart';
import 'package:addy01_/presentation/farmer_home_tab_container_page/farmer_card.dart';
import 'package:flutter/material.dart';

class FarmerHomePage1 extends StatefulWidget {
  const FarmerHomePage1({Key? key}) : super(key: key);

  @override
  FarmerHomePage1State createState() => FarmerHomePage1State();
}

List<String> dataList = [
  "#457",
  "#917",
  "#466",
  "#123",
  "#452",
  "#567",
  "#900"
];

class FarmerHomePage1State extends State<FarmerHomePage1>
    with AutomaticKeepAliveClientMixin<FarmerHomePage1> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    int count = 0;

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
                      Text(
                        "Trending ",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 29.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "36,590.00",
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "+6.21%",
                              style: CustomTextStyles.labelLargeGreenA400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 205.v,
                        width: 333.h,
                        child: ListView(
                          scrollDirection:
                              Axis.vertical, // Scroll vertically based on data
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: dataList.length,
                              itemBuilder: (context, index) {
                                final item = dataList[index];
                                return Table(
                                  border: TableBorder.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  children: [
                                    TableRow(
                                      children: [
                                        TableCell(
                                          child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20),
                                              child: Center(
                                                child: Text(
                                                  (count++).toString(),
                                                ),
                                              )),
                                        ),
                                        TableCell(
                                          child: Padding(
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
                                        ),
                                        TableCell(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 36.h,
                                              top: 5.v,
                                              bottom: 4.v,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
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
