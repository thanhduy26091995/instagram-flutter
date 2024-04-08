import 'package:instagram_flutter/app/config/app_route.dart';
import 'package:instagram_flutter/presentation/album/album_binding.dart';
import 'package:instagram_flutter/presentation/album/album_page.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: AppRoute.home,
      binding: AlbumBinding(),
      page: () => const AlbumPage(),
    )
  ];
}
