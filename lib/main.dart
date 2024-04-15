import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_page.dart';
import 'package:instagram_flutter/app/config/app_route.dart';
import 'package:instagram_flutter/app/utils/global.dart';

void main() {
  runApp(const MainApp(
    route: AppRoute.welcome,
  ));
}

class MainApp extends StatelessWidget {
  final String route;

  const MainApp({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColor.borderInputColor, // Desired status bar color
    ));

    return GetMaterialApp(
      initialRoute: route,
      getPages: AppPage.pages,
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
    );
  }
}
