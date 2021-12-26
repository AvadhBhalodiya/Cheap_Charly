import 'package:e_commerce_app/data/home_page_data.dart';
import 'package:e_commerce_app/models/SingleProductModel.dart';
import 'package:e_commerce_app/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class TabBarBar extends StatelessWidget {
  final List<SingleProductModel> productData;
  TabBarBar({required this.productData});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: colothsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        var data = productData[index];
        return SingleProductWidget(
          onPressed: () {},
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
          productOldPrice: data.productOldPrice,
          productPrice: data.productPrice,
        );
      },
    );
  }
}
