import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/stylies/detail_screen_stylies.dart';
import 'package:flutter/material.dart';

class SizeGuideScreen extends StatefulWidget {
  @override
  _SizeGuideScreenState createState() => _SizeGuideScreenState();
}

class _SizeGuideScreenState extends State<SizeGuideScreen> {
  String? _ratingController;

  Widget buildTableRowText({String? text}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  TableRow buildTableRow({List<Widget>? children}) {
    return TableRow(
      decoration: BoxDecoration(
        color: AppColors.basewhite60Color,
        border: Border.all(
          color: AppColors.baseGrey30Color,
        ),
      ),
      children: children,
    );
  }

  Widget buildExpansionTile(
      {List<String>? items, String? title, String? hint, String? value}) {
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

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Size Guide",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => print("pressed"),
          icon: Icon(Icons.info_outline),
        )
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
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.baseBlackColor,
                  ),
                ),
                buildExpansionTile(
                  hint: "Gender",
                  items: [
                    "Woman",
                    "Man",
                    "Kids",
                  ],
                  title: "Gender",
                  value: _ratingController,
                ),
              ],
            ),
          ),
          // return Padding(
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
              },
              border: TableBorder.all(
                color: AppColors.baseGrey30Color,
                width: 2,
              ),
              children: [
                buildTableRow(
                  children: [
                    buildTableRowText(
                      text: "US",
                    ),
                    buildTableRowText(
                      text: "UK",
                    ),
                    buildTableRowText(
                      text: "JP",
                    ),
                    buildTableRowText(
                      text: "EU",
                    ),
                  ],
                ),
                buildTableRow(
                  children: [
                    buildTableRowText(
                      text: "5",
                    ),
                    buildTableRowText(
                      text: "3.5",
                    ),
                    buildTableRowText(
                      text: "220",
                    ),
                    buildTableRowText(
                      text: "3.6",
                    ),
                  ],
                ),
                buildTableRow(
                  children: [
                    buildTableRowText(
                      text: "5.5",
                    ),
                    buildTableRowText(
                      text: "4",
                    ),
                    buildTableRowText(
                      text: "2.0",
                    ),
                    buildTableRowText(
                      text: "6.0",
                    ),
                  ],
                ),
                buildTableRow(
                  children: [
                    buildTableRowText(
                      text: "5.3",
                    ),
                    buildTableRowText(
                      text: "54",
                    ),
                    buildTableRowText(
                      text: "5.0",
                    ),
                    buildTableRowText(
                      text: "6.0",
                    ),
                  ],
                ),
                buildTableRow(
                  children: [
                    buildTableRowText(
                      text: "5.4",
                    ),
                    buildTableRowText(
                      text: "54",
                    ),
                    buildTableRowText(
                      text: "5.0",
                    ),
                    buildTableRowText(
                      text: "6.0",
                    ),
                  ],
                ),
                buildTableRow(
                  children: [
                    buildTableRowText(
                      text: "5.3",
                    ),
                    buildTableRowText(
                      text: "54",
                    ),
                    buildTableRowText(
                      text: "5.0",
                    ),
                    buildTableRowText(
                      text: "6.0",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.basewhite60Color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "InBetween Size",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.baseBlackColor,
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      "for tight fit\tgo one size down.\nfor losse fit, \tgo one size up",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: AppColors.baseBlackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
