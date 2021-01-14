import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_laboratory/common/config/config.dart';
import 'package:flutter_laboratory/common/router/ypb_router.dart';
import 'package:flutter_laboratory/common/utils/local_storage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    initParams();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

  }

  initParams() async {
    String token = await LocalStorage.get(Config.USER_TOKEN) ?? "22";
    if (context != null && token.isNotEmpty) {
      Navigator.pushReplacementNamed(context, YpbRouterName.MAIN);
    } else {
      Navigator.pushReplacementNamed(context, YpbRouterName.LOGIN);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          "static/images/welcome_image.png",
          scale: 0.5,
        ),
      ),
    );
  }

}
