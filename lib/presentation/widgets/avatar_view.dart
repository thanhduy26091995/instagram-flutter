import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_image.dart';

class AvatarView extends StatelessWidget {
  final double itemSize;
  final Color boxColor;
  final double borderWidth;

  const AvatarView(
      {super.key,
      required this.itemSize,
      this.boxColor = AppColor.borderAvatarColor,
      this.borderWidth = 1.5});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: borderWidth, color: boxColor),
      ),
      child: SizedBox(
        width: itemSize,
        height: itemSize,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: AppImage.avatar1.widget(),
        ),
      ),
    );
  }
}
