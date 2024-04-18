import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_image.dart';
import 'package:instagram_flutter/app/config/app_text.dart';

import '../../widgets/gradient_box_border.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 0.5,
          color: AppColor.lineDivider,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _storyItem(context, index % 2 == 0);
            },
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: 20,
          ),
        ),
        const Divider(
          height: 0.5,
          color: AppColor.lineDivider,
        )
      ],
    );
  }

  Widget _liveItem() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(6),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              shape: BoxShape.rectangle,
              gradient: const LinearGradient(colors: [
                Color(0xFFC90083),
                Color(0xFFD22463),
                Color(0xFFE10038)
              ])),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: AppText.primary(
              "LIVE",
              fontWeight: FontWeightType.medium,
              fontSize: 10,
              color: AppColor.primaryTextColorWhite,
            ),
          ),
        ),
      ),
    );
  }

  Widget _storyItem(BuildContext context, bool isShowLiveItem) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 9, bottom: 9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: _storyAvatar(isShowLiveItem),
            ),
            if (isShowLiveItem)
              Positioned.fill(
                  child: Align(
                      alignment: Alignment.bottomCenter, child: _liveItem()))
          ]),
          const SizedBox(
            height: 3,
          ),
          AppText.primary(
            "karennne",
            fontSize: 13,
            color: AppColor.primaryTextColor,
          )
        ],
      ),
    );
  }

  Widget _storyAvatar(bool isShowLiveItem) {
    List<Color> background;
    if (isShowLiveItem) {
      background = [
        AppColor.gradientColor4,
        AppColor.gradientColor5,
        AppColor.gradientColor6,
      ];
    } else {
      // Use a different set of colors when isShowLiveItem is false
      background = [
        AppColor.gradientColor1,
        AppColor.gradientColor2,
        AppColor.gradientColor3
      ];
    }

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: GradientBoxBorder(
          width: 3,
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: background),
        ),
      ),
      child: SizedBox(
        width: 82,
        height: 82,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: AppImage.avatar1.widget(),
        ),
      ),
    );
  }
}
