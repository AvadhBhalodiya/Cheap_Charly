import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/stylies/detail_screen_stylies.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  String? myController;

  Widget buildSignleBage() {
    return Card(
      child: Container(
        height: 140,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/originals/aa/c0/5f/aac05f35fbbd0c0cb176c2953c25ee78.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Black Mask",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.baseBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Fabric Pandit Original",
                            style: TextStyle(
                              color: AppColors.baseDarkPinkColor,
                            ),
                          ),
                          Text(
                            "\$20.00",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.baseBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$30.00",
                            style: TextStyle(
                              fontSize: 16.0,
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.baseGrey50Color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: AppColors.baseGrey30Color,
                        child: Icon(
                          Icons.check,
                          color: AppColors.baseWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "WishList",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: 14.0,
            top: 14.0,
          ),
          child: Text(
            "Select",
            style: TextStyle(
              fontSize: 20.0,
              color: AppColors.baseBlackColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 55.0,
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    primary: AppColors.baseGrey80Color,
                    onSurface: Colors.grey,
                  ),
                  icon: SvgPicture.asset(
                    SvgImages.delete,
                    color: AppColors.baseWhiteColor,
                    width: 30.0,
                  ),
                  label: Text(
                    "Remove",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: AppColors.baseWhiteColor,
                    ),
                  ),
                  onLongPress: () {},
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 55.0,
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    primary: AppColors.baseDarkPinkColor,
                    onSurface: Colors.grey,
                  ),
                  icon: SvgPicture.asset(
                    SvgImages.shoppingCart,
                    color: AppColors.baseWhiteColor,
                    width: 30.0,
                  ),
                  label: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: AppColors.baseWhiteColor,
                    ),
                  ),
                  onLongPress: () {},
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
