import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_image.dart';
import 'package:instagram_flutter/app/config/app_text.dart';
import 'package:instagram_flutter/presentation/main/home/dot_item.dart';

class NewFeedItem extends StatefulWidget {
  const NewFeedItem({super.key});

  @override
  State<NewFeedItem> createState() => _NewFeedItemState();
}

class _NewFeedItemState extends State<NewFeedItem> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _userInformation(),
        MainMediaView(
          onPageChanged: (currentPage) {
            setState(() {
              _currentPage = currentPage;
            });
          },
        ),
        _mainContent(_currentPage),
        const Divider(
          height: 0.5,
          color: AppColor.lineDivider,
        )
      ],
    );
  }

  Widget _userInformation() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
              flex: 9,
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: SizedBox(
                      width: 32,
                      height: 32,
                      child: AppImage.avatar1.widget(),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.primary(
                            "joshua_l",
                            fontWeight: FontWeightType.semiBold,
                            fontSize: 13,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          AppIcon.icVerified.widget()
                        ],
                      ),
                      AppText.primary(
                        "joshua_l",
                        fontSize: 11,
                      )
                    ],
                  ),
                ],
              )),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: AppIcon.icMore.widget(),
          )
        ],
      ),
    );
  }

  Widget _mainContent(int currentPage) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buttonsContainer(currentPage),
          const SizedBox(
            height: 12,
          ),
          _content()
        ],
      ),
    );
  }

  Widget _buttonsContainer(int currentPage) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 5,
          child: Row(
            children: [
              AppIcon.icHeart.widget(width: 24, height: 24),
              const SizedBox(
                width: 17,
              ),
              AppIcon.icComment.widget(width: 24, height: 24),
              const SizedBox(
                width: 17,
              ),
              AppIcon.icMessenger.widget(width: 24, height: 24),
            ],
          ),
        ),
        Flexible(
          flex: 5,
          fit: FlexFit.tight,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _dotItems(currentPage),
                AppIcon.icBookmark.widget(width: 24, height: 24)
              ]),
        )
      ],
    );
  }

  Widget _dotItems(int currentPage) {
    return Row(
      children: [
        for (int i = 0; i < 3; i++) ...[
          DotItem(
            isSelected: currentPage == i,
          ),
          const SizedBox(
            width: 5,
          )
        ]
      ],
    );
  }

  Widget _content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: 19,
                height: 19,
                child: AppImage.avatar1.widget(),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontFamily: FontFamilyType.sfPro.name(),
                        color: AppColor.primaryTextColor,
                        fontWeight: FontWeightType.medium.type()),
                    children: [
                  const TextSpan(text: "Liked by "),
                  TextSpan(
                      text: "craig_love ",
                      style: TextStyle(
                          fontWeight: FontWeightType.semiBold.type())),
                  const TextSpan(text: "and "),
                  TextSpan(
                      text: "44,686 others",
                      style: TextStyle(
                          fontWeight: FontWeightType.semiBold.type())),
                ]))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        RichText(
            text: TextSpan(
                style: TextStyle(
                    fontFamily: FontFamilyType.sfPro.name(),
                    color: AppColor.primaryTextColor,
                    fontWeight: FontWeightType.medium.type()),
                children: [
              TextSpan(
                  text: "joshua_l ",
                  style: TextStyle(fontWeight: FontWeightType.semiBold.type())),
              const TextSpan(
                  text:
                      "The game in Japan was amazing and I want to share some photos "),
            ]))
      ],
    );
  }
}

class MainMediaView extends StatefulWidget {
  final Function(int) onPageChanged;

  const MainMediaView({super.key, required this.onPageChanged});

  @override
  State<MainMediaView> createState() => _MainMediaViewState();
}

class _MainMediaViewState extends State<MainMediaView> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
        widget.onPageChanged(_currentPage);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              AppImage.imageMainMedia1.widget(),
              AppImage.imageMainMedia1.widget(),
              AppImage.imageMainMedia1.widget()
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 14, 14, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.backgroundMediaSize.withOpacity(0.7),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: AppText.primary(
                    "${_currentPage + 1}/3",
                    color: AppColor.primaryTextColorWhite,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
