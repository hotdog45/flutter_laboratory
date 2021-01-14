import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_laboratory/page/common/main_page.dart';
import 'package:flutter_laboratory/page/common/welcome_page.dart';

import 'package:flutter_laboratory/page/user/login_page.dart';

class YpbRouter {
  static generateRoute(RouteSettings settings) {
    String routeName = settings.name;
    Map args = settings.arguments;
    print("--------Open page: $routeName   arguments：$args");
    switch (routeName) {
      case YpbRouterName.WELCOME:
        return MaterialPageRoute(builder: (context) {
          return WelcomePage();
        });

      case YpbRouterName.MAIN:
        return MaterialPageRoute(builder: (context) {
          if (args != null) {
            return MainPage(args["selIndex"] ?? 0);
          } else {
            return MainPage(0);
          }
        });

      case YpbRouterName.LOGIN:
        return MaterialPageRoute(builder: (context) {
          return LoginPage();
        });

      case YpbRouterName.PRODUCT_DETAIL:
        return MaterialPageRoute(builder: (context) {
          return LoginPage();
        });
    }
  }
}

class YpbRouterName {
  static const WELCOME = "/";
  static const MAIN = "/main";
  static const LOGIN = "/login";
  static const PRODUCT_DETAIL = "/product_detail";
}
