import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screens/confirmationsuccesspage/confirmation_success_page.dart';
import 'package:e_commerce_app/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  Widget buildBottomPart(BuildContext context) {
    return Column(
      children: [
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
            text: "Place Order",
            onPress: () {
              PageRouting.goToNextPage(
                context: context,
                navigateTo: ConfirmationSuccessPage(),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildConfirmationProduct() {
    return Card(
      child: Container(
        height: 140,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                "\$ 20",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: AppColors.baseBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fabric Pandit Original",
                                style: TextStyle(
                                  color: AppColors.baseDarkPinkColor,
                                ),
                              ),
                              Text(
                                "\$ 40",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 16.0,
                                  color: AppColors.baseBlackColor,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Color:\tBlack",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.baseGrey60Color,
                            ),
                          ),
                          Text(
                            "Quantity:\tx1",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.baseGrey60Color,
                            ),
                          ),
                        ],
                      ),
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
      backgroundColor: AppColors.baseGrey10Color,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Confirmation",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.baseBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Order number #9549385732957293"),
                ),
                buildConfirmationProduct(),
                buildConfirmationProduct(),
                buildConfirmationProduct(),
                buildBottomPart(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
