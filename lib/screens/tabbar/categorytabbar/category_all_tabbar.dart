import 'package:e_commerce_app/data/category_screen_data.dart';
import 'package:e_commerce_app/models/SingleProductModel.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/detailscreen/detail_screen.dart';
import 'package:e_commerce_app/widgets/show_all_widget.dart';
import 'package:e_commerce_app/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class CategoryAllTabBar extends StatelessWidget {
  Widget builderRender({required List<SingleProductModel> singlePoduct}) {
    return Container(
      height: 250.0,
      child: GridView.builder(
        itemCount: singlePoduct.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          var data = singlePoduct[index];
          return SingleProductWidget(
            onPressed: () {
              PageRouting.goToNextPage(
                context: context,
                navigateTo: DetailScreen(data: data),
              );
            },
            productImage: data.productImage,
            productModel: data.productModel,
            productName: data.productName,
            productOldPrice: data.productOldPrice,
            productPrice: data.productPrice,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ShowAllWidget(
          leftText: "Clothing",
        ),
        builderRender(
          singlePoduct: categoryClothData,
        ),
        ShowAllWidget(
          leftText: "Shoes",
        ),
        builderRender(
          singlePoduct: categoryShoesData,
        ),
        ShowAllWidget(
          leftText: "Accessories",
        ),
        builderRender(
          singlePoduct: categoryAccessoriesData,
        ),
      ],
    );
  }
}
