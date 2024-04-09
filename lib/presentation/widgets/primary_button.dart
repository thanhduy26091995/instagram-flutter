import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.isEnable = true,
      this.backgroundColor = AppColor.primaryButtonBackground,
      this.disableBackgroundColor = AppColor.black,
      this.height = 44,
      this.radius = 5,
      this.padding,
      this.textColor = AppColor.primaryTextColorWhite,
      this.disableTextColor = AppColor.primaryTextColorWhite});

  final String title;
  final double height;
  final double radius;
  final bool isEnable;
  final Color backgroundColor;
  final Color disableBackgroundColor;
  final Color textColor;
  final Color disableTextColor;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: padding,
          color: backgroundColor,
          height: height,
          width: double.infinity,
          alignment: Alignment.center,
          child: AppText.primaryButton(
            title,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
