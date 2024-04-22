import 'package:instagram_flutter/app/config/app_image.dart';
import 'package:flutter/material.dart';

abstract class AppIcon {
  AppIcon._();

  static const String _assetPath = "assets/icons";

  static AppIconBuilder get icArrowDown =>
      AppIconBuilder(assetPath: "$_assetPath/ic_arrow_down.svg");

  static AppIconBuilder get icInstagram =>
      AppIconBuilder(assetPath: "$_assetPath/ic_instagram_logo.svg");

  static AppIconBuilder get icFacebook =>
      AppIconBuilder(assetPath: "$_assetPath/ic_facebook.svg");

  static AppIconBuilder get icHome =>
      AppIconBuilder(assetPath: "$_assetPath/ic_home.svg");

  static AppIconBuilder get icHomeSelected =>
      AppIconBuilder(assetPath: "$_assetPath/ic_home_selected.svg");

  static AppIconBuilder get icSearch =>
      AppIconBuilder(assetPath: "$_assetPath/ic_search.svg");

  static AppIconBuilder get icSearchSelected =>
      AppIconBuilder(assetPath: "$_assetPath/ic_search_selected.svg");

  static AppIconBuilder get icAdd =>
      AppIconBuilder(assetPath: "$_assetPath/ic_add.svg");

  static AppIconBuilder get icHeart =>
      AppIconBuilder(assetPath: "$_assetPath/ic_heart.svg");

  static AppIconBuilder get icHeartSelected =>
      AppIconBuilder(assetPath: "$_assetPath/ic_heart_selected.svg");

  static AppIconBuilder get icCamera =>
      AppIconBuilder(assetPath: "$_assetPath/ic_camera.svg");

  static AppIconBuilder get icIGTV =>
      AppIconBuilder(assetPath: "$_assetPath/ic_igtv.svg");

  static AppIconBuilder get icMessenger =>
      AppIconBuilder(assetPath: "$_assetPath/ic_messenger.svg");

  static AppIconBuilder get icMore =>
      AppIconBuilder(assetPath: "$_assetPath/ic_more.svg");

  static AppIconBuilder get icVerified =>
      AppIconBuilder(assetPath: "$_assetPath/ic_verified.svg");

  static AppIconBuilder get icComment =>
      AppIconBuilder(assetPath: "$_assetPath/ic_comment.svg");

  static AppIconBuilder get icBookmark =>
      AppIconBuilder(assetPath: "$_assetPath/ic_bookmark.svg");

  static AppIconBuilder get icScanIcon =>
      AppIconBuilder(assetPath: "$_assetPath/ic_live.svg");
}

class AppIconBuilder {
  final String assetPath;

  AppIconBuilder({required this.assetPath});

  Widget widget({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Alignment alignment = Alignment.center,
    Color? color,
    BorderRadius? borderRadius,
    Widget? placeHolder,
    String? errorImageUrl,
    int? memCacheHeight,
  }) {
    return ImageBuilder(
      key: key,
      input: assetPath,
      alignment: alignment,
      borderRadius: borderRadius,
      boxFit: fit,
      color: color,
      errorImageUrl: errorImageUrl,
      height: height,
      width: width,
      memCacheHeight: memCacheHeight,
      placeHolder: placeHolder,
    );
  }
}
