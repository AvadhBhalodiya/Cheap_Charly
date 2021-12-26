import 'package:e_commerce_app/data/category_screen_data.dart';
import 'package:e_commerce_app/data/home_page_data.dart';
import 'package:e_commerce_app/models/categoryProductModel.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/category/sub_category.dart';
import 'package:e_commerce_app/widgets/category_product_widget.dart';
import 'package:flutter/material.dart';

class CategoryMenTabBar extends StatelessWidget {
  List<CategoryProductModel>? categoryProductModel = [];
  CategoryMenTabBar({this.categoryProductModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryProductModel!.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var data = categoryProductModel![index];
        return CategoryProductWidget(
          onPressed: () {
            if (index == 0) {
              PageRouting.goToNextPage(
                navigateTo: SubCategory(
                  productData: colothsData,
                  productModel: colothsData[index].productModel,
                  productName: menCategoryData[index].productName,
                ),
                context: context,
              );
            } else if (index == 1) {
              PageRouting.goToNextPage(
                navigateTo: SubCategory(
                  productData: shoesData,
                  productModel: shoesData[index].productModel,
                  productName: menCategoryData[index].productName,
                ),
                context: context,
              );
            } else if (index == 2) {
              PageRouting.goToNextPage(
                navigateTo: SubCategory(
                  productData: accessoriesData,
                  productModel: accessoriesData[index].productModel,
                  productName: menCategoryData[index].productName,
                ),
                context: context,
              );
            } else if (index == 3) {
              PageRouting.goToNextPage(
                navigateTo: SubCategory(
                  productData: accessoriesData,
                  productModel: accessoriesData[index].productModel,
                  productName: menCategoryData[index].productName,
                ),
                context: context,
              );
            } else if (index == 4) {
              PageRouting.goToNextPage(
                navigateTo: SubCategory(
                  productData: accessoriesData,
                  productModel: accessoriesData[index].productModel,
                  productName: menCategoryData[index].productName,
                ),
                context: context,
              );
            }
          },
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
        );
      },
    );
  }
}
