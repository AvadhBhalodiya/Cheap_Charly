import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/data/category_screen_data.dart';
import 'package:e_commerce_app/screens/tabbar/categorytabbar/category_all_tabbar.dart';
import 'package:e_commerce_app/screens/tabbar/categorytabbar/category_men_tabbar.dart';
import 'package:e_commerce_app/stylies/category_screen_stylies.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/category_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Welcome",
        style: CategoryScreenStylies.categoryAppBarTitleStylies,
      ),
      actions: [
        RotationTransition(
          turns: AlwaysStoppedAnimation(90 / 360),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 35.0,
            ),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 35.0,
          ),
          onPressed: () {},
        ),
      ],
      bottom: TabBar(
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        automaticIndicatorColorAdjustment: false,
        tabs: [
          Text("All"),
          Text("Men"),
          Text("Woman"),
          Text("Kids"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.baseWhiteColor,
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            //All Place
            CategoryAllTabBar(),
            //Men Place
            CategoryMenTabBar(
              categoryProductModel: menCategoryData,
            ),
            //Woman Place
            CategoryMenTabBar(
              categoryProductModel: womenCategoryData,
            ),
            //Kids Place
            CategoryMenTabBar(
              categoryProductModel: forKids,
            ),
          ],
        ),
      ),
    );
  }
}
