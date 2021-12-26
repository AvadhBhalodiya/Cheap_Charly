import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/stylies/detail_screen_stylies.dart';
import 'package:e_commerce_app/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String? _ratingController;

  RangeValues _currentRangeValue = const RangeValues(40, 80);

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Filter",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
    );
  }

  Widget buildExpansionTile(
      {List<String>? items, String? title, String? hint}) {
    return ExpansionTile(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  fillColor: AppColors.basewhite60Color,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                iconSize: 30.0,
                hint: Text(
                  hint!,
                  style: DetailScreenStylies.productFromDownValueStylies,
                ),
                value: _ratingController,
                items: items!
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  setState(() {
                    _ratingController = value;
                  });
                },
              )
            ],
          ),
        ),
      ],
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.baseBlackColor,
        ),
      ),
    );
  }

  Widget buildListTile({String? title}) {
    return ListTile(
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 16.0,
          color: AppColors.baseBlackColor,
        ),
      ),
    );
  }

  Widget buildSizeGuide(
      {String? text, bool containerColor = false, Color? color}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: containerColor ? color : AppColors.baseGrey10Color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: containerColor
          ? Container()
          : Text(
              text!,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }

  Widget buildPriceExpansionTile() {
    return ExpansionTile(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              RangeSlider(
                values: _currentRangeValue,
                min: 0,
                max: 1000,
                labels: RangeLabels(
                  _currentRangeValue.start.round().toString(),
                  _currentRangeValue.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValue = values;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$\t${_currentRangeValue.start.toInt()}",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: AppColors.baseBlackColor,
                    ),
                  ),
                  Text(
                    "\$\t${_currentRangeValue.end.toInt()}",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: AppColors.baseBlackColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      title: Text(
        "Price",
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: AppColors.baseBlackColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildListTile(
            title: "Most Popular",
          ),
          Divider(),
          buildListTile(
            title: "New Items",
          ),
          Divider(),
          buildListTile(
            title: "Price\t High - Low",
          ),
          Divider(),
          buildListTile(
            title: "Price\t Low - High",
          ),
          Divider(),
          buildExpansionTile(
            items: [
              "Woman",
              "Man",
              "Kids",
            ],
            hint: "Gender",
            title: "Gender",
          ),
          Divider(),
          buildExpansionTile(
            items: [
              "T-Shirt",
              "Jacket",
              "Sneakers",
            ],
            hint: "Category",
            title: "Category",
          ),
          Divider(),
          ExpansionTile(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: GridView.count(
                  crossAxisCount: 5,
                  primary: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  children: [
                    buildSizeGuide(
                      text: "5",
                    ),
                    buildSizeGuide(
                      text: "5.5",
                    ),
                    buildSizeGuide(
                      text: "6",
                    ),
                    buildSizeGuide(
                      text: "6.5",
                    ),
                    buildSizeGuide(
                      text: "7",
                    ),
                    buildSizeGuide(
                      text: "7.5",
                    ),
                    buildSizeGuide(
                      text: "8",
                    ),
                    buildSizeGuide(
                      text: "8.5",
                    ),
                    buildSizeGuide(
                      text: "9",
                    ),
                    buildSizeGuide(
                      text: "9.5",
                    ),
                    buildSizeGuide(
                      text: "10",
                    ),
                    buildSizeGuide(
                      text: "10.5",
                    ),
                    buildSizeGuide(
                      text: "11",
                    ),
                    buildSizeGuide(
                      text: "11.5",
                    ),
                    buildSizeGuide(
                      text: "12",
                    ),
                  ],
                ),
              ),
            ],
            title: Text(
              "Size",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: AppColors.baseBlackColor,
              ),
            ),
          ),
          Divider(),
          ExpansionTile(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: GridView.count(
                  crossAxisCount: 5,
                  primary: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  children: [
                    buildSizeGuide(
                      color: AppColors.baseDarkPinkColor,
                      containerColor: true,
                    ),
                    buildSizeGuide(
                      color: Colors.yellow,
                      containerColor: true,
                    ),
                    buildSizeGuide(
                      color: Colors.pinkAccent,
                      containerColor: true,
                    ),
                    buildSizeGuide(
                      color: Colors.green,
                      containerColor: true,
                    ),
                  ],
                ),
              ),
            ],
            title: Text(
              "Colors",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: AppColors.baseBlackColor,
              ),
            ),
          ),
          buildPriceExpansionTile(),
          Container(
            margin: EdgeInsets.all(20.0),
            child: MyButtonWidget(
              color: AppColors.baseDarkPinkColor,
              onPress: () {},
              text: "View More Items",
            ),
          ),
        ],
      ),
    );
  }
}
