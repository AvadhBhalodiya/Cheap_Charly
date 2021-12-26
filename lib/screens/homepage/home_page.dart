import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/data/home_page_data.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/detailscreen/detail_screen.dart';
import 'package:e_commerce_app/screens/fillter/fillter_screen.dart';
import 'package:e_commerce_app/stylies/home_screen_stylies.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/show_all_widget.dart';
import 'package:e_commerce_app/widgets/singleProduct_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tabbar/tabbar_data.dart';

class HomePage extends StatelessWidget {
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text("All"),
          Text("Cloathing"),
          Text("Shoes"),
          Text("Accesories"),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Welcome",
            style: HomeScreenStylies.appBarUpperTitleStylies,
          ),
          Text(
            "Shopping",
            style: HomeScreenStylies.appBarBottomTitleStylies,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            PageRouting.goToNextPage(
              context: context,
              navigateTo: FilterScreen(),
            );
          },
          icon: RotationTransition(
            turns: AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 30.0,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 30.0,
          ),
        ),
      ],
    );
  }

  Widget buildAdvertismentPlace() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        height: 170,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          showIndicator: false,
          images: [
            Container(
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://blog.creatopy.com/wp-content/uploads/2019/03/creative-advertising-and-pop-culture-pop-culture-ads.png",
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://blog.creatopy.com/wp-content/uploads/2018/05/advertisement-ideas-inspiration-advertising.png",
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTrendingProduct(
      {String? productImage,
      String? productName,
      String? productModel,
      double? productPrice}) {
    return Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 30.0,
        right: 20.0,
        bottom: 20.0,
      ),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.network(productImage!),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName!,
                    style: HomeScreenStylies.trendingProductNameStyle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    productModel!,
                    style: HomeScreenStylies.trendingProductModelStyle,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              elevation: 0,
              height: 45.0,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(0.7),
              ),
              onPressed: () {},
              child: Text(
                "\$ $productPrice",
                style: HomeScreenStylies.trendingProductPriceStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: TabBarView(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                buildAdvertismentPlace(),
                ShowAllWidget(
                  leftText: "New Arrival",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: sigleProductData.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = sigleProductData[index];
                      return SingleProductWidget(
                        onPressed: () {
                          PageRouting.goToNextPage(
                            context: context,
                            navigateTo: DetailScreen(
                              data: data,
                            ),
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
                ),
                Divider(
                  indent: 15,
                  endIndent: 16,
                ),
                ShowAllWidget(
                  leftText: "What\'s trending",
                ),
                buildTrendingProduct(
                  productImage:
                      'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
                buildTrendingProduct(
                  productImage:
                      'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFja3BhY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                  productModel: 'Backpack',
                  productName: 'VFA Boost',
                  productPrice: 21.3,
                ),
                buildTrendingProduct(
                  productImage:
                      'https://media.istockphoto.com/photos/side-view-of-purple-and-orange-trainers-picture-id1174498492?k=20&m=1174498492&s=612x612&w=0&h=rhiCBHuSAgx2fQEsQi4E8eeDVoHKCvL41ef1c1MILUY=',
                  productModel: 'Sports Shoes',
                  productName: 'Spyker',
                  productPrice: 220.2,
                ),
                ShowAllWidget(
                  leftText: "History",
                ),
                Container(
                  height: 240.0,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: sigleProductData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) {
                      var data = sigleProductData[index];
                      return SingleProductWidget(
                        onPressed: () {
                          PageRouting.goToNextPage(
                            context: context,
                            navigateTo: DetailScreen(
                              data: data,
                            ),
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
                ),
              ],
            ),
            TabBarBar(
              productData: colothsData,
            ),
            TabBarBar(
              productData: shoesData,
            ),
            TabBarBar(
              productData: accessoriesData,
            ),
          ],
        ),
      ),
    );
  }
}
