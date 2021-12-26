import 'package:e_commerce_app/appColors/app_colors.dart';
import 'package:e_commerce_app/svgimages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class buildSocialButton extends StatelessWidget {
  buildSocialButton({Key? key, this.onpress, this.title}) : super(key: key);

  VoidCallback? onpress;
  String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress!,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: AppColors.baseBlackColor,
          ),
          borderRadius: BorderRadius.circular(5),

        ),
        child: SvgPicture.asset(
          title!,
          color: AppColors.baseBlackColor,
          width: 45.0,
        ),
      ),
    );
  }
}
