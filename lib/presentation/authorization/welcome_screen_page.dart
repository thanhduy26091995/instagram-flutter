import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_image.dart';
import 'package:instagram_flutter/app/config/app_text.dart';
import 'package:instagram_flutter/presentation/widgets/primary_button.dart';

class WelcomeScreenPage extends StatelessWidget {
  const WelcomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Center(
          child: _mainContent(),
        ),
      ),
    );
  }

  Widget _mainContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppIcon.icInstagram.widget(),
        _padding(height: 52),
        _avatarView(),
        _padding(height: 12),
        AppText.primary(
          "Dennis B",
          fontWeight: FontWeightType.semiBold,
          fontSize: 14,
        ),
        _padding(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: PrimaryButton(
            title: "Log In",
            onPressed: () => {},
            padding: const EdgeInsets.symmetric(horizontal: 32),
          ),
        ),
        _padding(height: 30),
        InkWell(
          onTap: () => {},
          child: AppText.primary(
            "Switch accounts",
            fontWeight: FontWeightType.semiBold,
            fontSize: 14,
            color: AppColor.primaryButtonBackground,
          ),
        )
      ],
    );
  }

  Widget _padding({double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
    );
  }

  Widget _avatarView() {
    return SizedBox(
      width: 85,
      height: 85,
      child: CircleAvatar(
        backgroundImage: AssetImage(AppImage.avatar1.assetPath),
      ),
    );
  }
}
