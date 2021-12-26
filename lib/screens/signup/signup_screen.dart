import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/stylies/signup_screen_stylies.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:e_commerce_app/widgets/buildsocialbutton.dart';
import 'package:e_commerce_app/widgets/my_button_widget.dart';
import 'package:e_commerce_app/widgets/my_textfromfield_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {

  Widget buildTopPart(){
    return Column(
      children: [
        Image.asset(
            "images/Logo.png",
          height: 150.0,
        ),
        MyTextFromField(
          hintText: "Full name",
          obscureText: false,
        ),
        MyTextFromField(
          hintText: "Email",
          obscureText: false,
        ),
        MyTextFromField(
          hintText: "Password",
          obscureText: true,
        ),
        MyTextFromField(
          hintText: "Confirm Password",
          obscureText: true,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: MyButtonWidget(
            onPress: (){},
            text: "Create an account",
            color: AppColors.baseDarkPinkColor,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        RichText(
          text: TextSpan(
            text: "By sigining up you agree to our \n\t ",
            style: SignupScreenStylies.signInAgressStyle,
            children: <TextSpan>[
              TextSpan(
                text: "Terms",
                style: SignupScreenStylies.termsTextStyle,
              ),
              TextSpan(
                text: "\tand\t",
                style: SignupScreenStylies.andTextStyle,
              ),
              TextSpan(
                text: "Conditions of use",
                style: SignupScreenStylies.conditionOfUseStyle,
              ),
            ],
          ),
        )
      ],
    );
  }



  Widget buildBottomPart(){
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
              "or sign in with social networks",
            style: SignupScreenStylies.signInSocialStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // facebook social button
                buildSocialButton(
                  onpress: (){},
                  title: SvgImages.facebook,
                ),
                // google social button
                buildSocialButton(
                  onpress: (){},
                    title: SvgImages.google,
                ),
                // twitter social button
                buildSocialButton(
                  onpress: (){},
                  title: SvgImages.twitter,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: () {},
              color: AppColors.baseGrey10Color,
              height: 55.0,
              elevation: 0,
              child: Center(
                child: Text(
                  "Sign up",
                  style: SignupScreenStylies.signUpButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildTopPart(),
            buildBottomPart(),
          ],
        ),
      )
    );
  }
}
