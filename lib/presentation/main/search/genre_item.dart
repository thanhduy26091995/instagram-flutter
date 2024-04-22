import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_text.dart';

class GenreItem extends StatelessWidget {
  final bool isShowIcon;

  const GenreItem({super.key, required this.isShowIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: AppColor.lineDivider)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isShowIcon) ...[
                AppIcon.icAdd.widget(width: 13, height: 13),
                const SizedBox(
                  width: 5,
                )
              ],
              AppText.primary("IGTV",
                  fontWeight: FontWeightType.semiBold, fontSize: 14)
            ],
          ),
        ),
      ),
    );
  }
}
