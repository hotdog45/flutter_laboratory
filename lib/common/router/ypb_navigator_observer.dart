import 'package:flutter/widgets.dart';

class YpbNavigatorObserver extends NavigatorObserver {
  ///route 当前路由
  ///previousRoute   先前活动的路由
  ///放入路由  即打开
  @override
  void didPush(Route route, Route previousRoute) {
    print('----------push-----------');
    print('当前活动的路由：${route.settings}');
    print('先前活动的路由：${previousRoute?.settings}');
    print('----------end-----------');
  }

  ///弹出当前路由
  @override
  void didPop(Route route, Route previousRoute) {
    print('----------pop-----------');
    print('当前活动的路由：${route.settings}');
    print('先前活动的路由：${previousRoute?.settings}');
    print('----------end-----------');
  }
}
