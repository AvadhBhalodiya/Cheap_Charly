import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/payment/payment_screen.dart';
import 'package:e_commerce_app/stylies/detail_screen_stylies.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YourBagScreen extends StatefulWidget {
  @override
  _YourBagScreenState createState() => _YourBagScreenState();
}

class _YourBagScreenState extends State<YourBagScreen> {
  String? myController;

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.heart,
            color: AppColors.baseBlackColor,
            width: 40.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.delete,
            color: AppColors.baseBlackColor,
            width: 30.0,
          ),
        ),
      ],
    );
  }

  Widget buildSignleBage() {
    return Card(
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/originals/aa/c0/5f/aac05f35fbbd0c0cb176c2953c25ee78.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Black Mask",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.baseBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Fabric Pandit Original",
                            style: TextStyle(
                              color: AppColors.baseDarkPinkColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$20.00",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: AppColors.baseBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$30.00",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  decoration: TextDecoration.lineThrough,
                                  color: AppColors.baseGrey50Color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: AppColors.baseGrey30Color,
                        child: Icon(
                          Icons.check,
                          color: AppColors.baseWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        fillColor: AppColors.baseWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      hint: Text(
                        "Size",
                        style: DetailScreenStylies.productFromDownValueStylies,
                      ),
                      value: myController,
                      items: ["M", "L", "S", "ML"]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (String? value) {
                        setState(() {
                          myController = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        fillColor: AppColors.baseWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      hint: Text(
                        "Color",
                        style: DetailScreenStylies.productFromDownValueStylies,
                      ),
                      value: myController,
                      items: ["Red", "Green", "Blue", "Pink"]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (String? value) {
                        setState(() {
                          myController = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        fillColor: AppColors.baseWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      hint: Text(
                        "Quantity",
                        style: DetailScreenStylies.productFromDownValueStylies,
                      ),
                      value: myController,
                      items: ["1", "2", "3", "4", "5"]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (String? value) {
                        setState(() {
                          myController = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your bag",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: AppColors.baseBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  "You have 3 item in your bag",
                  style: TextStyle(
                    color: AppColors.baseGrey60Color,
                  ),
                ),
                buildSignleBage(),
                buildSignleBage(),
                buildSignleBage(),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(
                            right: 20,
                          ),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: AppColors.basewhite60Color,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: Text(
                            "1369874589147",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.baseBlackColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          elevation: 0,
                          height: 40.0,
                          color: AppColors.baseLightOrangeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Text(
                            "Employ",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.baseWhiteColor,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order Amount",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.baseBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Your total amount of discount",
                        style: TextStyle(
                          color: AppColors.baseBlackColor,
                        ),
                      ),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$104.98",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: AppColors.baseBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "\$-45.78",
                        style: TextStyle(
                          color: AppColors.baseBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: MyButtonWidget(
                    color: AppColors.baseDarkPinkColor,
                    text: "Checkout",
                    onPress: () {
                      PageRouting.goToNextPage(
                        context: context,
                        navigateTo: PaymentScreen(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
