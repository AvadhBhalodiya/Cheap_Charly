import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenStylies{
  // appBarUpperTitleStylies
  static const TextStyle appBarUpperTitleStylies = TextStyle(
    color: AppColors.baseBlackColor,
    fontWeight: FontWeight.bold,
  );

  // appBarBottomTitleStylies
  static const TextStyle appBarBottomTitleStylies = TextStyle(
    color: Colors.grey,
    fontSize: 13.0,
  );

  // trendingProductNameStyle
  static const TextStyle trendingProductNameStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
  );

  // trendingProductModelStyle
  static const TextStyle trendingProductModelStyle = TextStyle(
    fontSize: 14.0,
    color: AppColors.baseDarkPinkColor,
  );

  // trendingProductPriceStyle
  static const TextStyle trendingProductPriceStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.baseWhiteColor,
  );
}