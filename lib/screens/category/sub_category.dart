import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/models/SingleProductModel.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/detailscreen/detail_screen.dart';
import 'package:e_commerce_app/stylies/sub_category_stylies.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubCategory extends StatefulWidget {
  List<SingleProductModel>? productData;
  final String productName;
  final String productModel;
  SubCategory({
    this.productData,
    required this.productName,
    required this.productModel,
  });

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  int isSelect = 1;

  List<bool> isSelected = [true, false, false];
  FocusNode focusNodeButton1 = FocusNode();
  FocusNode focusNodeButton2 = FocusNode();
  FocusNode focusNodeButton3 = FocusNode();
  List<FocusNode>? focusToggle;

  @override
  void initState() {
    // TODO: implement initState
    focusToggle = [
      focusNodeButton1,
      focusNodeButton2,
      focusNodeButton3,
    ];
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    focusNodeButton1.dispose();
    focusNodeButton2.dispose();
    focusNodeButton3.dispose();
    super.dispose();
  }

  Widget buildToggleButton() {
    return ToggleButtons(
      borderWidth: 0,
      focusColor: null,
      fillColor: Colors.transparent,
      selectedColor: AppColors.baseDarkPinkColor,
      disabledColor: AppColors.baseBlackColor,
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
      focusNodes: focusToggle,
      children: [
        Icon(
          Icons.grid_view,
          size: 25.0,
        ),
        Icon(
          Icons.view_agenda_outlined,
          size: 25.0,
        ),
        Icon(
          Icons.crop_landscape_sharp,
          size: 25.0,
        ),
      ],
      onPressed: (int index) {
        if (index == 0) {
          setState(() {
            isSelect = 1;
          });
        } else if (index == 1) {
          setState(() {
            isSelect = 2;
          });
        } else if (index == 2) {
          setState(() {
            isSelect = 3;
          });
        }

        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: RotationTransition(
            turns: AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 35.0,
            ),
          ),
          onPressed: () {},
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: SubCategoryStylies.subCategoryTitleStylies,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${widget.productData!.length}",
                  style: SubCategoryStylies.subCategoryProductItemStylies,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.list_alt_sharp,
                            color: AppColors.baseBlackColor,
                            size: 25.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            widget.productModel,
                            style:
                                SubCategoryStylies.subCategoryModelNameStylies,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildToggleButton(),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
                GridView.builder(
                  itemCount: widget.productData!.length,
                  shrinkWrap: true,
                  primary: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isSelect == 1
                        ? 2
                        : isSelect == 2
                            ? 1
                            : isSelect == 3
                                ? 1
                                : 2,
                    childAspectRatio: isSelect == 1
                        ? 0.7
                        : isSelect == 2
                            ? 1.5
                            : isSelect == 3
                                ? 0.8
                                : 0.7,
                  ),
                  itemBuilder: (context, index) {
                    var data = widget.productData![index];
                    return SingleProductWidget(
                      onPressed: () {
                        PageRouting.goToNextPage(
                          navigateTo: DetailScreen(
                            data: data,
                          ),
                          context: context,
                        );
                      },
                      productImage: data.productImage,
                      productModel: data.productModel,
                      productOldPrice: data.productOldPrice,
                      productName: data.productName,
                      productPrice: data.productPrice,
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
