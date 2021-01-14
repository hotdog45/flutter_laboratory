import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_laboratory/common/router/ypb_router.dart';



/**
 * 导航栏
 */

const appHotSalePage = "ypb://appHotSalePage";
const activityPage = "ypb://activityPage";

class NavigatorUtils {
  ///替换
  static pushReplacementNamed(BuildContext context, String routeName, {Map args}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: args);
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }

  ///切换页面
  static pushNamed(BuildContext context, String routeName, {Map args}) {
    Navigator.pushNamed(context, routeName, arguments: args);
  }

  ///主页
  static goHome(BuildContext context) {
    goMainPageByIndex(context, 0);
  }

  ///主页某个tab
  static goMainPageByIndex(BuildContext context, int index) {
    Navigator.pushNamedAndRemoveUntil(
        context, YpbRouterName.MAIN,
        (route) => false, arguments: {"selIndex": index});
  }

  static pushMainPageByIndex(BuildContext context, int index) {
    goMainPageByIndex(context,index);
  }

  ///登录页
  static goLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, YpbRouterName.LOGIN);
  }

  /// 0商品详情  3楼层 4营销活动  1 :url   7 协议
  static goPageByType(BuildContext context, int type, String id,
      {String title, String source}) {


  }

  /// 提示框
  static showToast(msg) {
    if (Platform.isIOS) {
      Fluttertoast.showToast(msg: msg, gravity: ToastGravity.CENTER);
    } else {
      Fluttertoast.showToast(msg: msg);
    }
  }

  //隐藏键盘
  static dismissKeyboard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  ///
  @deprecated
  static pushAndPopPage(BuildContext context, Widget widget) {
    Navigator.pop(context);
    return Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => pageContainer(context, widget)));
  }

  ///！！！别用了统一使用router跳转
  @deprecated
  static  navigatorRouter(BuildContext context, Widget widget) {
    return Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => pageContainer(context, widget)));
  }

  ///！！！别用了统一使用router跳转
  @deprecated
  static Widget pageContainer(BuildContext context, widget) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: widget);
  }

  ///弹出 dialog
  static Future<T> showDialog<T>({
    @required BuildContext context,
    bool barrierDismissible = true,
    WidgetBuilder builder,
  }) {
    return showDialog<T>(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (context) {
          return MediaQuery(

              ///不受系统字体缩放影响
              data: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .copyWith(textScaleFactor: 1),
              child: SafeArea(child: builder(context)));
        });
  }
}
