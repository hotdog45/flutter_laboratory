import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'common/router/ypb_navigator_observer.dart';
import 'common/router/ypb_router.dart';
import 'common/utils/app_init_utils.dart';

void main() {
  appInitUtils.initSystemUI();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) =>
          YpbRouter.generateRoute(settings),
      navigatorObservers: [YpbNavigatorObserver()],
      debugShowCheckedModeBanner: !kReleaseMode,
      theme: appInitUtils.initThemeData(),
      initialRoute: YpbRouterName.WELCOME,
    );
  }
}
