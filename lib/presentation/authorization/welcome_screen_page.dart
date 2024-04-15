import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_image.dart';
import 'package:instagram_flutter/app/config/app_page.dart';
import 'package:instagram_flutter/app/config/app_text.dart';
import 'package:instagram_flutter/presentation/authorization/login_screen_page.dart';
import 'package:instagram_flutter/presentation/widgets/primary_button.dart';

class WelcomeScreenPage extends StatelessWidget {
  const WelcomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Flexible(
                flex: 9,
                child: _mainContent(() {
                  Get.to(const LoginScreenPage());
                }, () {
                  print("On Switch account click");
                })),
            Flexible(
                flex: 1,
                child: _signUpContainer(() {
                  // On Sign Up Click
                  print("On Sign Up click");
                }))
          ],
        ),
      ),
    );
  }

  Widget _signUpContainer(VoidCallback onSignUpClick) {
    return Column(
      children: [
        const Divider(
          height: 1,
          color: AppColor.lineDivider,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText.primary(
                "Don’t have an account?",
                fontSize: 12,
                color: AppColor.black.withOpacity(0.4),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: onSignUpClick,
                child: AppText.primary(
                  "Sign up.",
                  fontSize: 12,
                  fontWeight: FontWeightType.semiBold,
                  color: AppColor.primaryTextColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _mainContent(
      VoidCallback onLogInClick, VoidCallback onSwitchAccountClick) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
            onPressed: onLogInClick,
            padding: const EdgeInsets.symmetric(horizontal: 32),
          ),
        ),
        _padding(height: 30),
        InkWell(
          onTap: onSwitchAccountClick,
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
