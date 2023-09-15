import 'package:addy01_/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavhome,
        activeIcon: ImageConstant.imgNavhome,
        title: "Home",
        type: BottomBarEnum.Home,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavmanagement,
      activeIcon: ImageConstant.imgNavmanagement,
      title: "management",
      type: BottomBarEnum.Management,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavrefresh,
      activeIcon: ImageConstant.imgNavrefresh,
      title: "Refresh",
      type: BottomBarEnum.Refresh,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavmarket,
      activeIcon: ImageConstant.imgNavmarket,
      title: "Market",
      type: BottomBarEnum.Market,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavprofile,
      activeIcon: ImageConstant.imgNavprofile,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24.h),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: appTheme.blueGray9004c,
        child: SizedBox(
          height: 32.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    // widgetonChanged?.call(bottomMenuList[index].type);
                    setState(() {});
                  },
                  child: bottomMenuList[index].isSelected
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: bottomMenuList[index].activeIcon,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              color: appTheme.whiteA700,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: CustomTextStyles.labelMediumWhiteA700
                                    .copyWith(
                                  color: appTheme.whiteA700,
                                ),
                              ),
                            ),
                            Container(
                              height: 4.v,
                              width: 41.h,
                              margin: EdgeInsets.only(top: 15.v),
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(4.h),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: bottomMenuList[index].icon,
                              height: 32.v,
                              width: 35.h,
                              color: appTheme.whiteA700,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: theme.textTheme.labelMedium!.copyWith(
                                  color: appTheme.gray50001,
                                ),
                              ),
                            ),
                          ],
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Management,
  Refresh,
  Market,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
