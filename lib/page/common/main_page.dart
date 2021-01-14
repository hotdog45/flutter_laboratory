import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_laboratory/common/config/config.dart';
import 'package:flutter_laboratory/common/style/style.dart';
import 'package:flutter_laboratory/common/utils/app_init_utils.dart';
import 'package:flutter_laboratory/page/main/category_page.dart';
import 'package:flutter_laboratory/page/main/home_page.dart';
import 'package:flutter_laboratory/page/main/mine_page.dart';
import 'package:flutter_laboratory/page/main/shopping_cart_page.dart';

class MainPage extends StatefulWidget {
  final int selIndex;

  @override
  _MainPageState createState() => _MainPageState();

  MainPage(
    this.selIndex,
  );
}

class _MainPageState extends State<MainPage> {
  bool jumpDetail = true;
  final List<Widget> tabBodies = [
    HomePage(),
    CategoryPage(),
    ShoppingCartPage(),
    MinePage(),
  ];
  List<String> tabName = ["home", "category", "cart", "mine"];

  int currentIndex = 0;
  var currentPage;
  int badgeValue = 0;
  String _apiType = "";
  bool isShowHomeToTop = false; //是否滑动到置顶条件
  bool isAtHomePage = true; //是否在首页

  Offset _endOffset;
  GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    currentIndex = widget.selIndex ?? 0;
    currentPage = tabBodies[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    AppInitUtils.appContext = context;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Stack(
        children: <Widget>[
          Image.asset(
            Config.KEY_IMAGE_PATH + "up_top.png",
            gaplessPlayback: true,
          ),
          Scaffold(
            bottomNavigationBar: CupertinoTabBar(
              items: _getBottomList(),
              currentIndex: currentIndex,
              activeColor: kAppThemeColor,
              inactiveColor: kAppTextColor,
              backgroundColor: Colors.white,
              onTap: (index) {
                if (index == 0 || index == 4) {
                  SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle.light);
                } else {
                  SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle.dark);
                }
                setState(() {
                  currentIndex = index;
                  currentPage = tabBodies[index];
                });
              },
            ),
            body: WillPopScope(
              onWillPop: doubleClickBack,
              child: IndexedStack(
                index: currentIndex,
                children: tabBodies,
              ),
            ),
            // floatingActionButton: !Config.DEBUG
            //     ? Container()
            //     : InkWell(
            //         child: Icon(
            //           Icons.build,
            //           size: 50,
            //         ),
            //         onTap: () {
            //           NavigatorUtils.navigatorRouter(context, TestPage());
            //         },
            //       ),
          ),
        ],
      ),
    );
  }

  List<BottomNavigationBarItem> _getBottomList() {
    List<BottomNavigationBarItem> bottomTabs = [
      _getBottomNavigationBarItem(
          "tab_home_unSel.png", "tab_home_sel.png", "首页"),
      _getBottomNavigationBarItem(
          "tab_category_unSel.png", "tab_category_sel.png", "分类"),
      _getBottomNavigationBarItem(
          "tab_shop_cart_unSel.png", "tab_shop_cart_sel.png", "分类"),
      _getBottomNavigationBarItem(
          "tab_mine_unSel.png", "tab_mine_sel.png", "我的"),
    ];

    return bottomTabs;
  }

  BottomNavigationBarItem _getBottomNavigationBarItem(image, imageSel, title) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          Config.KEY_IMAGE_PATH + image,
          width: iconSize,
        ),
        activeIcon: Image.asset(
          Config.KEY_IMAGE_PATH + imageSel,
          width: iconSize,
          gaplessPlayback: true,
        ),
        title: Text(title,style: TextStyle(fontSize: 14),));
  }

//底部导航栏的样式
  TextStyle bottomNavTextStyle(bool toHomeTop) => TextStyle(
      fontSize: (toHomeTop && isShowHomeToTop && isAtHomePage) ? 0 : 11);
  double iconSize = 22;
  double wordsSize = 11;

  int last = 0;

  Future<bool> doubleClickBack() {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (now - last > 1000) {
      last = DateTime.now().millisecondsSinceEpoch;
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  // 释放掉Timer
  @override
  void dispose() {
    super.dispose();
  }
}
