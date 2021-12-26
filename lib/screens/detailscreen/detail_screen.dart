import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/data/detail_screen_data.dart';
import 'package:e_commerce_app/models/SingleProductModel.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/sizeguide/size_guide_screen.dart';
import 'package:e_commerce_app/stylies/detail_screen_stylies.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/drop_button_widget.dart';
import 'package:e_commerce_app/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatefulWidget {
  final SingleProductModel data;

  DetailScreen({required this.data});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String? _ratingController;
  String? _sizeController;

  PreferredSize buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Reebok",
          style: TextStyle(
            color: AppColors.baseBlackColor,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              SvgImages.heart,
              color: AppColors.baseBlackColor,
              width: 35.0,
              semanticsLabel: "fave",
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              SvgImages.upload,
              color: AppColors.baseBlackColor,
              width: 35.0,
              semanticsLabel: "fave",
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "images/Logo.png",
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productName,
                  style: DetailScreenStylies.companyTitleStylies,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  widget.data.productModel,
                  style: DetailScreenStylies.productModelStylies,
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailScreenStylies.productPriceStylies,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  widget.data.productOldPrice.toString(),
                  style: DetailScreenStylies.productOldPriceStylies,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    widget.data.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0, top: 15.0),
                        child: Image.network(widget.data.productSecondImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0, top: 15.0),
                        child: Image.network(widget.data.productThirdImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0, top: 15.0),
                        child: Image.network(widget.data.productFourImage),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: DropButton(
                  hintText: "Color",
                  item: ["red", "blue", "white", "black", "pink"],
                  ratingController: _ratingController,
                ),
              ),
              Expanded(
                child: DropButton(
                  hintText: "Size",
                  item: ["25", "30", "35", "40", "45"],
                  ratingController: _sizeController,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: MaterialButton(
              elevation: 0,
              height: 50.0,
              color: AppColors.baseDarkGreenColor,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "Add to Cart",
                style: DetailScreenStylies.buttonTextStyle,
              ),
              onPressed: () {},
            ),
          ),
          ExpansionTile(
            title: Text(
              "Description",
              style: DetailScreenStylies.buttonTextStyle,
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: [
                    Text(
                      "this woman\'s tank top is designed to help you\nstay cool. it\'s made of stretchy and breathable\nfabric that moves heat away from your skin\n",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\tMaterial",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "84%\tnylon",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "16% elastanc",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\tSize",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "2XS,\tXS, \tS, \tM, \tL",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\tGender",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "Woman",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\tCountry",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "India",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MaterialButton(
                          height: 55.0,
                          elevation: 0,
                          child: Text(
                            "Size Guide",
                            style: DetailScreenStylies.sizeGruideTextStyle,
                          ),
                          minWidth: double.infinity,
                          color: AppColors.basewhite60Color,
                          onPressed: () {
                            PageRouting.goToNextPage(
                              context: context,
                              navigateTo: SizeGuideScreen(),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            leading: Text(
              "You may also Like",
              style: DetailScreenStylies.youmayalsoLikeTextStyle,
            ),
            trailing: Text(
              "Show All",
              style: DetailScreenStylies.showAllTextStyle,
            ),
          ),
          Container(
            height: 240,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              primary: true,
              itemCount: detailScreenData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                var data = detailScreenData[index];
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
    );
  }
}
