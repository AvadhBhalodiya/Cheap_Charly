import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/mybottombar/my_bottom_bar.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/homepage/home_page.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmationSuccessPage extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Success",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.close,
            color: AppColors.baseBlackColor,
            width: 30,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Congratulatios",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColors.baseBlackColor,
                          ),
                        ),
                        Text(
                          "Your Order is accepted",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColors.baseBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Your Item are on the way",
                          style: TextStyle(
                            color: AppColors.baseGrey40Color,
                          ),
                        ),
                        Text(
                          "and should arrive shortly",
                          style: TextStyle(
                            color: AppColors.baseGrey40Color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MyButtonWidget(
              onPress: () {
                PageRouting.goToNextPage(
                  context: context,
                  navigateTo: HomePage(),
                );
              },
              text: "Back to Home",
              color: AppColors.baseDarkPinkColor,
            ),
          ),
        ],
      ),
    );
  }
}
