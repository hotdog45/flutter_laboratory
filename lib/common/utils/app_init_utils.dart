import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_laboratory/common/config/config.dart';
import 'package:flutter_laboratory/common/utils/local_storage.dart';
final AppInitUtils appInitUtils = new AppInitUtils();

class AppInitUtils {
//移除用户数据
  Future clearUserData() async {
    LocalStorage.remove(Config.USER_TOKEN);
//    LocalStorage.remove(Config.USER_MOBILE);
    LocalStorage.remove(Config.USER_NICKNAME);
    LocalStorage.remove(Config.USER_AVATAR);

    LocalStorage.remove(Config.USER_CITY_CODE);
    LocalStorage.remove(Config.USER_SHOP_ID);
    LocalStorage.remove(Config.USER_AREA_CODE);
    LocalStorage.remove(Config.USER_PROVINCE_CODE);
    LocalStorage.remove(Config.USER_DELIVERY_ID);
  }
  static BuildContext appContext;
  initFluwx() async {

  }

  //友盟统计
  Future<void> initUmeng() async {


  }


  initEasyLoading() async {

  }

  initSystemUI() async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    if (Platform.isAndroid) {
      // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }

  ThemeData initThemeData() {
    return ThemeData(
      // 禁用水波纹效果
        highlightColor: Colors.transparent,
        splashFactory:  NoSplashFactory(),
        brightness: Brightness.light,

        primaryColor: Colors.greenAccent, //防止深色键盘
        appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black)));
  }
}
class NoSplashFactory extends InteractiveInkFeatureFactory {
  const NoSplashFactory();

  InteractiveInkFeature create({
    @required MaterialInkController controller,
    @required RenderBox referenceBox,
    @required Offset position,
    @required Color color,
    TextDirection textDirection,
    bool containedInkWell: false,
    RectCallback rectCallback,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    double radius,
    VoidCallback onRemoved,
  }) {
    return new NoSplash(
      controller: controller,
      referenceBox: referenceBox,
      color: color,
      onRemoved: onRemoved,
    );
  }
}
class NoSplash extends InteractiveInkFeature {
  NoSplash({
    @required MaterialInkController controller,
    @required RenderBox referenceBox,
    Color color,
    VoidCallback onRemoved,
  })  : assert(controller != null),
        assert(referenceBox != null),
        super(
          controller: controller,
          referenceBox: referenceBox,
          onRemoved: onRemoved) {
    controller.addInkFeature(this);
  }

  @override
  void paintFeature(Canvas canvas, Matrix4 transform) {}
}