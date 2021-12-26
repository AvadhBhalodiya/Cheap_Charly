import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/stylies/category_screen_stylies.dart';
import 'package:flutter/material.dart';

class CategoryProductWidget extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productModel;
  final Function()? onPressed;

  CategoryProductWidget({
    required this.productImage,
    required this.productName,
    required this.productModel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 10.0, right: 20.0, bottom: 20.0),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      productImage,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: CategoryScreenStylies.categoryPoductNameStylies,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    productModel,
                    style: CategoryScreenStylies.categoryPoductModelStylies,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.baseBlackColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
