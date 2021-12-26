import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/confirmation/confirmation_page.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/my_button_widget.dart';
import 'package:e_commerce_app/widgets/my_textfromfield_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.plus,
            color: AppColors.baseBlackColor,
            width: 40.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.delete,
            color: AppColors.baseBlackColor,
            width: 25.0,
          ),
        ),
      ],
    );
  }

  Widget buildTextField(
      {double? leftPadding, double? rightPadding, String? hintText}) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
        top: 20,
        left: leftPadding!,
        right: rightPadding!,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText!,
          fillColor: Colors.green[100],
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Order number is 23846728467",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: AppColors.baseGrey50Color,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                height: 180,
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 8.0,
                ),
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: SweepGradient(
                    center: AlignmentDirectional(1, -1),
                    startAngle: 1.7,
                    endAngle: 3,
                    colors: const <Color>[
                      Color(0xFF148535),
                      Color(0xFF148535),
                      Color(0XFF0D6630),
                      Color(0XFF0D6630),
                      Color(0xFF148535),
                      Color(0xFF148535),
                    ],
                    stops: const <double>[0.0, 0.3, 0.3, 0.7, 0.7, 1.0],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "VISA",
                          style: TextStyle(
                            fontSize: 24.30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.baseWhiteColor,
                          ),
                        ),
                        Text(
                          "visa electron",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.baseWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "****\t\t****\t\t****\t\t****\t\t9687",
                      style: TextStyle(
                        fontSize: 24.30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.baseWhiteColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Card Holder",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: AppColors.baseWhiteColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "John Wick",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: AppColors.baseWhiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expires",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: AppColors.baseWhiteColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "09\t/\t26",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: AppColors.baseWhiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  backgroundColor:
                                      AppColors.baseLightGreenColor,
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.baseWhiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              MyTextFromField(
                hintText: "Card holder",
                obscureText: false,
              ),
              MyTextFromField(
                hintText: "Card number",
                obscureText: false,
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextField(
                      hintText: "Exp",
                      leftPadding: 20,
                      rightPadding: 0,
                    ),
                  ),
                  Expanded(
                    child: buildTextField(
                      hintText: "Cvv",
                      leftPadding: 3,
                      rightPadding: 10,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      margin: EdgeInsets.only(right: 20),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: AppColors.baseLightOrangeColor,
                          onSurface: Colors.grey,
                        ),
                        icon: SvgPicture.asset(
                          SvgImages.plus,
                          color: AppColors.baseWhiteColor,
                          width: 20.0,
                        ),
                        label: Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: AppColors.baseWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppColors.baseGrey10Color,
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order Amount",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: AppColors.baseBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Your Total Amount Of Discount",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: AppColors.baseBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$103.76",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: AppColors.baseBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "\$-66.57",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: AppColors.baseBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: AppColors.baseGrey10Color,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 23.0),
                child: MyButtonWidget(
                  color: AppColors.baseDarkPinkColor,
                  text: "Confirmation",
                  onPress: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: ConfirmationPage(),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
