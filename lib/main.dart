import 'package:flutter/services.dart';
import 'package:instagram_flutter/app/config/app_page.dart';
import 'package:instagram_flutter/app/config/app_route.dart';
import 'package:instagram_flutter/app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.black, statusBarBrightness: Brightness.dark));

  runApp(const MainApp(
    route: AppRoute.welcome,
  ));
}

class MainApp extends StatelessWidget {
  final String route;

  const MainApp({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: route,
      getPages: AppPage.pages,
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
    );
  }
}
