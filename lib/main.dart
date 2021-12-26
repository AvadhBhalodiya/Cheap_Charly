import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/mybottombar/my_bottom_bar.dart';
import 'package:e_commerce_app/screens/loginScreen/login_screen.dart';
import 'package:e_commerce_app/screens/payment/payment_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.baseBlackColor,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      //home: PaymentScreen(),
      home: MyBottomBar(),
    );
  }
}
