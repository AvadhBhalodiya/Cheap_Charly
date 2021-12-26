import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowAllWidget extends StatelessWidget {

  final String leftText;
  ShowAllWidget({required this.leftText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: AppColors.baseBlackColor,
            ),
          ),
          Text(
            "Show All",
            style: TextStyle(
              fontSize: 17,
              color: AppColors.baseDarkPinkColor,
            ),
          ),
        ],
      ),
    );
  }
}
