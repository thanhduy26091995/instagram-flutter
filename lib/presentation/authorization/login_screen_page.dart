import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_text.dart';

import '../widgets/primary_button.dart';

class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: AppColor.background,
        appBar: AppBar(
          elevation: 0,
        ),
        body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: [
              Flexible(
                flex: 9,
                child: _mainContent(),
              ),
              Flexible(
                flex: 1,
                child: _bottomContainer(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _mainContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppIcon.icInstagram.widget(),
        const SizedBox(
          height: 40,
        ),
        _textField("Username", TextInputAction.next),
        const SizedBox(
          height: 12,
        ),
        _textField("Password", TextInputAction.done),
        const SizedBox(
          height: 19,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppText.primary(
                "Forgot Password",
                fontWeight: FontWeightType.medium,
                color: AppColor.primaryButtonBackground,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: PrimaryButton(
            title: "Log In",
            onPressed: () => {},
            padding: const EdgeInsets.symmetric(horizontal: 32),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon.icFacebook.widget(),
            const SizedBox(
              width: 5,
            ),
            AppText.primary(
              "Login with Facebook",
              fontWeight: FontWeightType.semiBold,
              fontSize: 14,
              color: AppColor.primaryButtonBackground,
            )
          ],
        )
      ],
    );
  }

  Widget _textField(String hint, TextInputAction action) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.maxFinite,
        child: TextField(
          decoration: InputDecoration(
              fillColor: AppColor.borderInputColor,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.1), width: 0.5)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.1), width: 0.5)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.1), width: 0.5)),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.2))),
        ),
      ),
    );
  }

  Widget _bottomContainer() {
    return Column(
      children: [
        const Divider(
          height: 1,
          color: AppColor.lineDivider,
        ),
        Expanded(
            child: Center(
                child: AppText.primary(
          "Instagram оr Facebook",
          fontSize: 12,
          color: AppColor.black.withOpacity(0.4),
        )))
      ],
    );
  }
}
